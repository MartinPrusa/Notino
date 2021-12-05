//
//  DashboardConfigurator.swift
//  notino-ios
//
//  Created by Martin Prusa on 05.12.2021.
//  Copyright (c) 2021 Martin Prusa. All rights reserved.
//
//

import Foundation

struct DashboardConfigurator: Configurator {

    let middleware: [MiddlewareType] = []

    func createView() -> DashboardView {
        let viewState = DashboardViewState()
        let worker = DashboardWorker(provider: appCore.dependency())
        let interactor = DashboardInteractor(present: action(to: viewState), dataStore: viewState, worker: worker, concurencyWorker: appCore.dependency())
        let router = DashboardRouter(dataStore: viewState, itemConfigurator: appCore.dependency())
        return DashboardView(viewState: viewState, interactor: interactor, router: router)
    }
}
