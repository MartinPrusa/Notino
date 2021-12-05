//
//  Scene.swift
//  notino-ios
//
//  Created by Martin Prusa on 05.12.2021.
//

import Foundation

protocol MiddlewareType {
    func execute(on action: ActionType)
}

protocol ActionType {}

protocol PresenterType: AnyObject {
    associatedtype Action: ActionType

    func present(_ action: Action)
}

protocol Configurator {
    var middleware: [MiddlewareType] { get }
}

extension Configurator {
    func action<Action, Presenter>(to presenter: Presenter) -> (Action) -> Void
        where Presenter: PresenterType, Presenter.Action == Action {
            return { [weak presenter] action in
                // Allow middleware to passively execute against action
                self.middleware.forEach { $0.execute(on: action) }
                presenter?.present(action)
            }
    }
}
