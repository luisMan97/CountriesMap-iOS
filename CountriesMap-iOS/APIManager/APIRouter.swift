//
//  APIRouter.swift
//  CountriesMap-iOS
//
//  Created by Jorge Luis Rivera Ladino on 7/07/20.
//  Copyright © 2020 Jorge Luis Rivera Ladino. All rights reserved.
//

import Foundation

enum APIRouter {
    
    case Countries
    
    private var method: HTTPMethod {
        switch self {
        case .Countries:
            return .GET
        }
    }
    
    private var path: String {
        switch self {
        case .Countries:
            return "all"
        }
    }
    
    private var url: String {
        return ApiManagerConstants.endpoint
    }
    
    var request: URLRequest? {
        guard let url = URL(string: url) else {
            return nil
        }
        
        var urlRequest = URLRequest(url: url.appendingPathComponent(path))
        urlRequest.httpMethod = method.rawValue
        
        switch self {
            case .Countries:
                //urlRequest.setValue("restcountries-v1.p.rapidapi.com", forHTTPHeaderField: "x-rapidapi-host")
                urlRequest.setValue("97c89c5cb5mshc73d0c89c3c72d8p12b0d4jsn0aac3b88c286", forHTTPHeaderField: "x-rapidapi-key")
                //urlRequest.setValue("true", forHTTPHeaderField: "useQueryString")
            return urlRequest
        }
    }
    
}

