//
//  Loader.swift
//  notino-ios
//
//  Created by Martin Prusa on 05.12.2021.
//

import SwiftUI

struct Loader: View {
    var isAnimating: Bool
    let style: UIActivityIndicatorView.Style

    var body: some View {
        ActivityIndicator(isAnimating: isAnimating, style: style)
    }
}

extension View {
    func loader(isLoading: Bool, style: UIActivityIndicatorView.Style) -> some View {
        ZStack {
            self
            if isLoading {
                Loader(isAnimating: isLoading, style: style)
            }
        }
    }
}

fileprivate struct ActivityIndicator: UIViewRepresentable {
    var isAnimating: Bool
    let style: UIActivityIndicatorView.Style

    func makeUIView(context: UIViewRepresentableContext<ActivityIndicator>) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: style)
    }

    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicator>) {
        isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
    }
}
