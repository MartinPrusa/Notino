//
//  DashboardInteractor.swift
//  notino-ios
//
//  Created by Martin Prusa on 05.12.2021.
//  Copyright (c) 2021 Martin Prusa. All rights reserved.
//
//

import Foundation
import MKit

enum DashboardAction: ActionType {
    case loaded([NotinoDashboardData])
    case loading
    case handle(Error)
}

protocol DashboardDataStore {}

struct DashboardInteractor {
    let present: (DashboardAction) -> Void
    let dataStore: DashboardDataStore
    let worker: DashboardWorkerProtocol
    let concurencyWorker: ConcurrencyWorker
}

// MARK: - BusinessLogic
extension DashboardInteractor {
    func load() async {
        present(.loading)
        let result = await worker.loadDashboard()
        concurencyWorker.performOnMainThread {
            switch result {
                case .success(let data):
                    present(.loaded(data))
                case .failure(let error):
                    present(.handle(error))
            }
        }
    }
}
