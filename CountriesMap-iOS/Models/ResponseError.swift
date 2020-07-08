//
//  ResponseError.swift
//  CountriesMap-iOS
//
//  Created by Jorge Luis Rivera Ladino on 7/07/20.
//  Copyright © 2020 Jorge Luis Rivera Ladino. All rights reserved.
//

import Foundation

struct ResponseError: Identifiable {
    var id = UUID()
    var message: String
}
