//
//  AppCore.swift
//  notino-ios
//
//  Created by Martin Prusa on 05.12.2021.
//

import Foundation
import CoreNotino
import MKit

final class AppCore {
    func dependency() -> NotinoProvider {
        NotinoProvider()
    }

    func dependency() -> ConcurrencyWorker {
        ConcurrencyWorker.shared
    }

    func dependency() -> DashboardItemConfigurator {
        DashboardItemConfigurator()
    }
}
