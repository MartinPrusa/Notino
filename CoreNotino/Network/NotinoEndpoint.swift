//
//  NotinoEndpoint.swift
//  
//
//  Created by Martin Prusa on 05.12.2021.
//

import Foundation
import MKit

public enum NotinoEndpoint: EndpointTarget {
    public var urlString: String {
        ""
    }

    case list
    case image(url: String)

    public var serverUrlString: String {
        switch self {
            case .list:
                return "https://my-json-server.typicode.com/cernfr1993/notino-assignment/db"
            case .image:
                return "https://i.notino.com/detail_zoom"
        }
    }

    public func requestFactoryConfigurator() -> URLRequestFactoryConfigurator {
        var configurator = baseRequestFactoryConfigurator()
        switch self {
            case .image(let url):
                configurator.httpUrlStringPath = url
            default:
                break
        }

        return configurator
    }
}
