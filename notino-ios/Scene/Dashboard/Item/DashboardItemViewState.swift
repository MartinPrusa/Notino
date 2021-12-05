//
//  DashboardItemViewState.swift
//  notino-ios
//
//  Created by Martin Prusa on 05.12.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import SwiftUI
import Combine

final class DashboardItemViewState: DashboardItemDataStore, ObservableObject {
    @Published private(set) var itemData: NotinoDashboardData
    @Published private(set) var imageData: Data?
    @Published private(set) var liked = false

    private var cancellables: [AnyCancellable] = []

    init(itemData: NotinoDashboardData) {
        self.itemData = itemData
    }
}

extension DashboardItemViewState: PresenterType {
	func present(_ action: DashboardItemAction) {
		switch action {
        case .like:
            liked.toggle()
		case .loadImage(let publisher):
            publisher
                .assign(to: \.imageData, on: self)
                .store(in: &cancellables)
		}
	}
}
