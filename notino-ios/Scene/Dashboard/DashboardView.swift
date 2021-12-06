//
//  DashboardView.swift
//  notino-ios
//
//  Created by Martin Prusa on 05.12.2021.
//  Copyright (c) 2021 Martin Prusa. All rights reserved.
//
//

import SwiftUI

struct DashboardView: View {
    @ObservedObject var viewState: DashboardViewState
    let interactor: DashboardInteractor?
    let router: DashboardRouter?

    private let withReduce: CGFloat = 16
    
    var body: some View {
        NavigationView {
            VStack {
                if let description = viewState.errorDescription {
                    Text(description)
                } else {
                    let columns: [GridItem] = Array(repeating: .init(.fixed(UIScreen.main.bounds.width/2-withReduce), alignment: .top), count: 2)
                    ScrollView {
                        LazyVGrid(columns: columns, alignment: .center) {
                            ForEach(viewState.data) { item in
                                router?.itemView(item: item)
                                    .padding(.bottom, 24)
                            }
                        }
                    }
                }
            }
            .preferredColorScheme(.light)
            .navigationTitle("Notino")
            .loader(isLoading: viewState.isLoading, style: .medium)
            .onAppear {
                Task {
                    await interactor?.load()
                }
            }
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardConfigurator().createView()
    }
}
