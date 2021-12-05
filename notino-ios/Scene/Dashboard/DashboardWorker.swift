//
//  DashboardWorker.swift
//  notino-ios
//
//  Created by Martin Prusa on 05.12.2021.
//  Copyright (c) 2021 Martin Prusa. All rights reserved.
//
//

import Foundation
import CoreNotino

enum DashboardLoadError: Error {
    case unknownError
    case corruptedData
}

protocol DashboardWorkerProtocol {
    func loadDashboard() async -> Result<[NotinoDashboardData], Error>
}

struct DashboardWorker {
	//MARK: Providers
    let provider: NotinoProvider
}

extension DashboardWorker: DashboardWorkerProtocol {
    func loadDashboard() async -> Result<[NotinoDashboardData], Error> {
        let result = await provider.loadDashboard(decodable: NotinoDashboardDataWrapper.self)
        switch result {
            case .success(let data):
                return .success(data.products)
            case .failure(let err):
                if err.err == nil, err.response == nil, err.data == nil {
                    return .failure(DashboardLoadError.unknownError)
                } else {
                    return .failure(DashboardLoadError.corruptedData)
                }
        }
    }
}

