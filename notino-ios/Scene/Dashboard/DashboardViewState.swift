//
//  DashboardViewState.swift
//  notino-ios
//
//  Created by Martin Prusa on 05.12.2021.
//  Copyright (c) 2021 Martin Prusa. All rights reserved.
//
//

import SwiftUI

final class DashboardViewState: DashboardDataStore, ObservableObject {
	@Published private(set) var isLoading = false
    @Published private(set) var data: [NotinoDashboardData] = []
    @Published private(set) var errorDescription: String?
}

extension DashboardViewState: PresenterType {
	func present(_ action: DashboardAction) {
		switch action {
		case .loaded(let data):
            isLoading = false
            if data.isEmpty {
                errorDescription = "Žádné položky."
            } else {
                errorDescription = nil
            }
            self.data = data
        case .loading:
            isLoading = true
        case .handle:
            isLoading = false
            errorDescription = "Něco se pokazilo."
		}
	}
}
