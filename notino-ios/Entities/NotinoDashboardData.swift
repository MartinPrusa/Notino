//
//  NotinoDashboardData.swift
//  notino-ios
//
//  Created by Martin Prusa on 05.12.2021.
//

import Foundation

struct NotinoDashboardDataWrapper: Decodable {
    enum CodingKeys: String, CodingKey {
        case products = "vpProductByIds"
    }

    let products: [NotinoDashboardData]
}

struct NotinoDashboardData: Decodable, Identifiable {
    enum CodingKeys: String, CodingKey {
        case id = "productId"
        case brand, attributes, annotation
        case masterID = "masterId"
        case url, orderUnit, price
        case imageURL = "imageUrl"
        case name, productCode, reviewSummary, stockAvailability
    }

    let id: Int
    let brand: Brand
    let attributes: Attributes
    let annotation: String
    let masterID: Int
    let url, orderUnit: String
    let price: Price
    let imageURL, name, productCode: String
    let reviewSummary: ReviewSummary
    let stockAvailability: StockAvailability
}

extension NotinoDashboardData {
    static var mock5: NotinoDashboardData {
        NotinoDashboardData(
            id: 16024282,
            brand: .init(
                id: "12187",
                name: "Philips"
            ),
            attributes: .init(
                master: true,
                airTransportDisallowed: true,
                packageSize: .init(
                    height: 220,
                    width: 110,
                    depth: 65
                ),
                freeDelivery: true,
                new: nil,
                action: nil,
                differentPackaging: nil
            ),
            annotation: "sonický elektrický zubní kartáček pro děti s Bluetooth",
            masterID: 16024282,
            url: "/philips/sonicare-for-kids-3-hx6352-42-sonicky-elektricky-zubni-kartacek-pro-deti-s-bluetooth/",
            orderUnit: "ks",
            price: .init(
                value: 1399,
                currency: "CZK"
            ),
            imageURL: "philips/8710103931096_01-o/philips-sonicare-for-kids-3-hx6352_42-sonicky-elektricky-zubni-kartacek-pro-deti-s-bluetooth_.jpg",
            name: "Sonicare For Kids 3+ HX6352/42",
            productCode: "PHI524D_KETB34",
            reviewSummary: .init(
                score: 5,
                averageRating: 5.0
            ),
            stockAvailability: .init(
                code: "moreThan20",
                count: nil
            )
        )
    }

    static var mock4: NotinoDashboardData {
        NotinoDashboardData(
            id: 16024282,
            brand: .init(
                id: "12187",
                name: "Philips"
            ),
            attributes: .init(
                master: true,
                airTransportDisallowed: true,
                packageSize: .init(
                    height: 220,
                    width: 110,
                    depth: 65
                ),
                freeDelivery: true,
                new: nil,
                action: nil,
                differentPackaging: nil
            ),
            annotation: "sonický elektrický zubní kartáček pro děti s Bluetooth",
            masterID: 16024282,
            url: "/philips/sonicare-for-kids-3-hx6352-42-sonicky-elektricky-zubni-kartacek-pro-deti-s-bluetooth/",
            orderUnit: "ks",
            price: .init(
                value: 1399,
                currency: "CZK"
            ),
            imageURL: "philips/8710103931096_01-o/philips-sonicare-for-kids-3-hx6352_42-sonicky-elektricky-zubni-kartacek-pro-deti-s-bluetooth_.jpg",
            name: "Sonicare For Kids 3+ HX6352/42",
            productCode: "PHI524D_KETB34",
            reviewSummary: .init(
                score: 4,
                averageRating: 5.0
            ),
            stockAvailability: .init(
                code: "moreThan20",
                count: nil
            )
        )
    }

    static var mock3: NotinoDashboardData {
        NotinoDashboardData(
            id: 16024282,
            brand: .init(
                id: "12187",
                name: "Philips"
            ),
            attributes: .init(
                master: true,
                airTransportDisallowed: true,
                packageSize: .init(
                    height: 220,
                    width: 110,
                    depth: 65
                ),
                freeDelivery: true,
                new: nil,
                action: nil,
                differentPackaging: nil
            ),
            annotation: "sonický elektrický zubní kartáček pro děti s Bluetooth",
            masterID: 16024282,
            url: "/philips/sonicare-for-kids-3-hx6352-42-sonicky-elektricky-zubni-kartacek-pro-deti-s-bluetooth/",
            orderUnit: "ks",
            price: .init(
                value: 1399,
                currency: "CZK"
            ),
            imageURL: "philips/8710103931096_01-o/philips-sonicare-for-kids-3-hx6352_42-sonicky-elektricky-zubni-kartacek-pro-deti-s-bluetooth_.jpg",
            name: "Sonicare For Kids 3+ HX6352/42",
            productCode: "PHI524D_KETB34",
            reviewSummary: .init(
                score: 3,
                averageRating: 5.0
            ),
            stockAvailability: .init(
                code: "moreThan20",
                count: nil
            )
        )
    }

    static var mock2: NotinoDashboardData {
        NotinoDashboardData(
            id: 16024282,
            brand: .init(
                id: "12187",
                name: "Philips"
            ),
            attributes: .init(
                master: true,
                airTransportDisallowed: true,
                packageSize: .init(
                    height: 220,
                    width: 110,
                    depth: 65
                ),
                freeDelivery: true,
                new: nil,
                action: nil,
                differentPackaging: nil
            ),
            annotation: "sonický elektrický zubní kartáček pro děti s Bluetooth",
            masterID: 16024282,
            url: "/philips/sonicare-for-kids-3-hx6352-42-sonicky-elektricky-zubni-kartacek-pro-deti-s-bluetooth/",
            orderUnit: "ks",
            price: .init(
                value: 1399,
                currency: "CZK"
            ),
            imageURL: "philips/8710103931096_01-o/philips-sonicare-for-kids-3-hx6352_42-sonicky-elektricky-zubni-kartacek-pro-deti-s-bluetooth_.jpg",
            name: "Sonicare For Kids 3+ HX6352/42",
            productCode: "PHI524D_KETB34",
            reviewSummary: .init(
                score: 2,
                averageRating: 5.0
            ),
            stockAvailability: .init(
                code: "moreThan20",
                count: nil
            )
        )
    }

    static var mock: NotinoDashboardData {
        NotinoDashboardData(
            id: 16024282,
            brand: .init(
                id: "12187",
                name: "Philips"
            ),
            attributes: .init(
                master: true,
                airTransportDisallowed: true,
                packageSize: .init(
                    height: 220,
                    width: 110,
                    depth: 65
                ),
                freeDelivery: true,
                new: nil,
                action: nil,
                differentPackaging: nil
            ),
            annotation: "sonický elektrický zubní kartáček pro děti s Bluetooth",
            masterID: 16024282,
            url: "/philips/sonicare-for-kids-3-hx6352-42-sonicky-elektricky-zubni-kartacek-pro-deti-s-bluetooth/",
            orderUnit: "ks",
            price: .init(
                value: 1399,
                currency: "CZK"
            ),
            imageURL: "philips/8710103931096_01-o/philips-sonicare-for-kids-3-hx6352_42-sonicky-elektricky-zubni-kartacek-pro-deti-s-bluetooth_.jpg",
            name: "Sonicare For Kids 3+ HX6352/42",
            productCode: "PHI524D_KETB34",
            reviewSummary: .init(
                score: 1,
                averageRating: 5.0
            ),
            stockAvailability: .init(
                code: "moreThan20",
                count: nil
            )
        )
    }

    static var mockStarLess: NotinoDashboardData {
        NotinoDashboardData(
            id: 16024282,
            brand: .init(
                id: "12187",
                name: "Philips"
            ),
            attributes: .init(
                master: true,
                airTransportDisallowed: true,
                packageSize: .init(
                    height: 220,
                    width: 110,
                    depth: 65
                ),
                freeDelivery: true,
                new: nil,
                action: nil,
                differentPackaging: nil
            ),
            annotation: "sonický elektrický zubní kartáček pro děti s Bluetooth",
            masterID: 16024282,
            url: "/philips/sonicare-for-kids-3-hx6352-42-sonicky-elektricky-zubni-kartacek-pro-deti-s-bluetooth/",
            orderUnit: "ks",
            price: .init(
                value: 1399,
                currency: "CZK"
            ),
            imageURL: "philips/8710103931096_01-o/philips-sonicare-for-kids-3-hx6352_42-sonicky-elektricky-zubni-kartacek-pro-deti-s-bluetooth_.jpg",
            name: "Sonicare For Kids 3+ HX6352/42",
            productCode: "PHI524D_KETB34",
            reviewSummary: .init(
                score: 0,
                averageRating: 0.0
            ),
            stockAvailability: .init(
                code: "moreThan20",
                count: nil
            )
        )
    }
}

// MARK: - Attributes
struct Attributes: Codable {
    enum CodingKeys: String, CodingKey {
        case master = "Master"
        case airTransportDisallowed = "AirTransportDisallowed"
        case packageSize = "PackageSize"
        case freeDelivery = "FreeDelivery"
        case new = "New"
        case action = "Action"
        case differentPackaging = "DifferentPackaging"
    }

    let master: Bool
    let airTransportDisallowed: Bool?
    let packageSize: PackageSize
    let freeDelivery, new, action, differentPackaging: Bool?
}

// MARK: - PackageSize
struct PackageSize: Codable {
    let height, width, depth: Int
}

// MARK: - Brand
struct Brand: Codable {
    let id, name: String
}

// MARK: - Price
struct Price: Codable {
    let value: Int
    let currency: String
}

// MARK: - ReviewSummary
struct ReviewSummary: Codable {
    let score: Int
    let averageRating: Double
}

// MARK: - StockAvailability
struct StockAvailability: Codable {
    let code: String
    let count: Int?
}
