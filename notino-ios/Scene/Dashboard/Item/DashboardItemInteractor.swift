//
//  DashboardItemInteractor.swift
//  notino-ios
//
//  Created by Martin Prusa on 05.12.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation
import Combine

enum DashboardItemAction: ActionType {
    case loadImage(AnyPublisher<Data?, Never>)
    case like
}

protocol DashboardItemDataStore {
    var itemData: NotinoDashboardData { get }
}

struct DashboardItemInteractor {
    let present: (DashboardItemAction) -> Void
    let dataStore: DashboardItemDataStore
    let worker: DashboardItemWorkerProtocol
}

// MARK: - BusinessLogic
extension DashboardItemInteractor {
    func like() {
        present(.like)
    }
    func loadImage() {
        present(
            .loadImage(
                worker.loadImage(
                    path: dataStore.itemData.imageURL
                )
            )
        )
    }
}
