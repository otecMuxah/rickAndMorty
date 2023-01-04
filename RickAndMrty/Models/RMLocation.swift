//
//  RMLocation.swift
//  RickAndMrty
//
//  Created by Mikhail Malyavin on 02.01.23.
//

import Foundation

struct RMLocation: Codable {
    var id: Int
    var name: String
    var url: String
    var created: String
    let type: String
    let dimension: String
    let residents: [String]
    
}
