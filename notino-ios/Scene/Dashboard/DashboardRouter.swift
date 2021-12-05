//
//  DashboardRouter.swift
//  notino-ios
//
//  Created by Martin Prusa on 05.12.2021.
//  Copyright (c) 2021 Martin Prusa. All rights reserved.
//
//

import Foundation

final class DashboardRouter {
    let dataStore: DashboardDataStore
    let itemConfigurator: DashboardItemConfigurator

    init(dataStore: DashboardDataStore, itemConfigurator: DashboardItemConfigurator) {
        self.dataStore = dataStore
        self.itemConfigurator = itemConfigurator
    }
    
    func itemView(item: NotinoDashboardData) -> DashboardItemView {
        itemConfigurator.createView(item: item)
    }
}
