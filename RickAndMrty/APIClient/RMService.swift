//
//  RMService.swift
//  RickAndMrty
//
//  Created by Mikhail Malyavin on 02.01.23.
//

import Foundation

/// Primary API service object to get Rick and Morty data
final class RMService {
    /// Shared singleton service
    static let shared = RMService()
    
    private init() {}
    
    public func execute(_ request: RMRequest, completition: @escaping () -> Void) {
        
    }
}
