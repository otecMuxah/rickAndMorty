//
//  RMRequest.swift
//  RickAndMrty
//
//  Created by Mikhail Malyavin on 02.01.23.
//

import Foundation

/// Object that represtnts single API call
final class RMRequest {
/// API Constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Desired endpoint
    let endpoint: RMEndpoint
    
    /// Path components for API
    let pathComponents: [String]
    
    /// <#Description#>
    let queryParams: [URLQueryItem]
    
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParams.isEmpty {
            string += "?"
            let argumentString = queryParams.compactMap({
                guard let value = $0.value else {return nil}
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    public var url: URL? {
        return URL(string: urlString)
    }
    
    public let httpMethod = "GET"
    
    /// Construct request
    /// - Parameters:
    ///   - endpoint: Target endpint
    ///   - pathComponents: Collection of Path components
    ///   - queryParams: Collection of query params
    init(endpoint: RMEndpoint, pathComponents: [String] = [], queryParams: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParams = queryParams
    }
}
