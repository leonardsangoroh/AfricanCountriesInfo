//
//  Country.swift
//  AfricanCountriesInfo
//
//  Created by Lee Sangoroh on 14/02/2024.
//

import Foundation

// Country conforms to Codable Protocol
struct Country: Decodable {
    var name: String
    var capitalCity: String
    var size: String
    var population: Int
    var currency: String
    var officialLanguage: String
}
