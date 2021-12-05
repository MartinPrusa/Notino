//
//  DashboardItemConfigurator.swift
//  notino-ios
//
//  Created by Martin Prusa on 05.12.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation

struct DashboardItemConfigurator: Configurator {

    let middleware: [MiddlewareType] = []

    func createView(item: NotinoDashboardData) -> DashboardItemView {
        let viewState = DashboardItemViewState(itemData: item)
        let worker = DashboardItemWorker(provider: appCore.dependency())
        let interactor = DashboardItemInteractor(present: action(to: viewState), dataStore: viewState, worker: worker)
        let router = DashboardItemRouter(dataStore: viewState)
        return DashboardItemView(viewState: viewState, interactor: interactor, router: router)
    }
}
