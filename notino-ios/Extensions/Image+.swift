//
//  Image+.swift
//  notino-ios
//
//  Created by Martin Prusa on 05.12.2021.
//

import SwiftUI

extension Image {
    init?(data: Data) {
        guard let uiImage = UIImage(data: data) else { return nil }
        self = Image(uiImage: uiImage)
    }
}
