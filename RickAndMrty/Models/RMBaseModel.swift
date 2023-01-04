//
//  RMBaseModel.swift
//  RickAndMrty
//
//  Created by Mikhail Malyavin on 04.01.23.
//

import Foundation

class RMBase {
    var id: Int
    var name: String
    var url: String
    var created: String
    
    public init(id: Int, name: String, url: String, created: String) {
        self.id = id
        self.name = name
        self.url = url
        self.created = created
    }
}
