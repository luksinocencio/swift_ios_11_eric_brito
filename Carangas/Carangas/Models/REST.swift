//
//  REST.swift
//  Carangas
//
//  Created by Lucas Inocencio on 02/02/18.
//  Copyright © 2018 Eric Brito. All rights reserved.
//

import Foundation

enum CarError {
    case url
    case taskError(error: Error)
    case noResponse
    case noData
    case responseStatusCode(code: Int)
    case invalidJSON
}


class REST {
    
    private static let basePath = "https://carangas.herokuapp.com/cars"
    
    private static let configuration: URLSessionConfiguration = {
        let config = URLSessionConfiguration.default
        config.allowsCellularAccess = false
        config.httpAdditionalHeaders = ["Content-Type": "application/json"]
        config.timeoutIntervalForRequest = 30.0
        config.httpMaximumConnectionsPerHost = 5
        return config
    }()
    
    private static let session =   URLSession(configuration: configuration)
    
    static func getSession() -> URLSession {
        return URLSession(configuration: configuration)
    }
    
    static func getURL() -> String {
        return "https://carangas.herokuapp.com/"
    }
}

