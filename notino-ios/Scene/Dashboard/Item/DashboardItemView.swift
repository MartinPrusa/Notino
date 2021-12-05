//
//  DashboardItemView.swift
//  notino-ios
//
//  Created by Martin Prusa on 05.12.2021.
//  Copyright (c) 2021 Martin Prusa. All rights reserved.
//
//

import SwiftUI

struct DashboardItemView: View {
    
    @ObservedObject var viewState: DashboardItemViewState
    let interactor: DashboardItemInteractor?
    let router: DashboardItemRouter?
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    interactor?.like()
                } label: {
                    if viewState.liked {
                        Image(ImageNames.Assets.heartBold.rawValue)
                    } else {
                        Image(ImageNames.Assets.heart.rawValue)
                    }
                }
            }

            if let imageData = viewState.imageData {
                Image(data: imageData)?
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 120, maxHeight: 100, alignment: .center)
            } else {
                Image(systemName: ImageNames.SystemImages.photo.rawValue)
            }

            Text(viewState.itemData.brand.name)
                .font(Font.title2.weight(.light))
            Text(viewState.itemData.name)
                .font(Font.body.weight(.medium))
            Text(viewState.itemData.annotation)
                .multilineTextAlignment(.center)
                .font(Font.footnote.weight(.regular))

            HStack {
                ForEach(0..<5) { index in
                    if (index+1) <= viewState.itemData.reviewSummary.score {
                        Image(ImageNames.Assets.starPink.rawValue)
                    } else {
                        Image(ImageNames.Assets.star.rawValue)
                    }
                }
            }

            Text("\(viewState.itemData.price.value) \(viewState.itemData.price.currency)")
                .padding(.top, 4)
                .font(Font.body.weight(.bold))

            Button {

            } label: {
                Text("DO KOŠÍKU")
                    .font(Font.caption.weight(.regular))
                    .foregroundColor(.gray)
                    .padding(6)
                    .overlay(
                        Rectangle()
                            .stroke(.gray, lineWidth: 2)
                    )
            }
            .padding(.top, 12)
        }
        .onAppear {
            interactor?.loadImage()
        }
    }
}

struct DashboardItemView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DashboardItemConfigurator().createView(item: .mock5)
            DashboardItemConfigurator().createView(item: .mock4)
            DashboardItemConfigurator().createView(item: .mock3)
            DashboardItemConfigurator().createView(item: .mock2)
            DashboardItemConfigurator().createView(item: .mock)
            DashboardItemConfigurator().createView(item: .mockStarLess)
        }
    }
}
