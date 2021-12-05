//
//  DashboardItemWorker.swift
//  notino-ios
//
//  Created by Martin Prusa on 05.12.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation
import CoreNotino
import MKit
import Combine

enum DashboardImageError: Error {
    case noImage
}

protocol DashboardItemWorkerProtocol {
    func loadImage(path: String) -> AnyPublisher<Data?, Never>
}

struct DashboardItemWorker {
	//MARK: Providers
    let provider: NotinoProvider
}

extension DashboardItemWorker: DashboardItemWorkerProtocol {
    func loadImage(path: String) -> AnyPublisher<Data?, Never> {
        provider.loadDashboardImage(path: path)
            .map { $0.data }
            .replaceError(with: nil)
            .eraseToAnyPublisher()
    }
}

