//
//  NotinoProvider.swift
//  
//
//  Created by Martin Prusa on 05.12.2021.
//

import Foundation
import MKit
import Combine

public struct NotinoProvider {
    public init() { }

    public func loadDashboard<T: Decodable>(decodable: T.Type) async -> Result<T, UrlResponseResource.ErrorResponse> {
        let endpoint = NotinoEndpoint.list
        let requestConfig = endpoint.requestFactoryConfigurator()
        let request = URLRequestFactory(config: requestConfig).request
        let resource = UrlResponseResource(request: request, result: nil, isSslPinningEnabled: false)

        return await URLSessionFactory.shared.plainLoadDecoded(resource: resource, decodable: decodable)
    }

    public func loadDashboardImage(path: String) -> AnyPublisher<UrlResponseResource.ResultConstruct, UrlResponseResource.ErrorResponse> {
        let endpoint = NotinoEndpoint.image(url: path)
        let requestConfig = endpoint.requestFactoryConfigurator()
        let request = URLRequestFactory(config: requestConfig).request
        let resource = UrlResponseResource(request: request, result: nil, isSslPinningEnabled: false)

        return URLSessionFactory.shared.plainLoadPublisher(resource: resource)
    }
}
