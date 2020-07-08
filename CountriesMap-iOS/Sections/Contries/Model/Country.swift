//
//  Country.swift
//  CountriesMap-iOS
//
//  Created by Jorge Luis Rivera Ladino on 7/07/20.
//  Copyright © 2020 Jorge Luis Rivera Ladino. All rights reserved.
//

import Foundation

class Country: Codable, Identifiable {
    let name: String?
    let capital: String?
    let region: String?
    let latlng: [Float]?
}
