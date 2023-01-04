//
//  RMCharacter.swift
//  RickAndMrty
//
//  Created by Mikhail Malyavin on 02.01.23.
//

import Foundation

struct RMCharacter: Codable {
    var id: Int
    var name: String
    var url: String
    var created: String
    let status: RMCharacterStatus
    let species: String
    let type: String
    let gender: RMCharcterGender
    let origin: RMCharacterLocation
    let location: RMCharacterLocation
    let image: String
    let episode: [String]
}

enum RMCharacterStatus: String, Codable {
    case dead = "Dead"
    case alive = "Alive"
    case `unknown` = "unknown"
}

enum RMCharcterGender: String, Codable {
    case female = "Female"
    case male = "Male"
    case genderless = "Genderless"
    case `unknown` = "unknown"
    
}
