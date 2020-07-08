//
//  CountryViewModel.swift
//  CountriesMap-iOS
//
//  Created by Jorge Luis Rivera Ladino on 7/07/20.
//  Copyright © 2020 Jorge Luis Rivera Ladino. All rights reserved.
//

import Foundation

class CountryViewModel: ObservableObject {
    
    private var country: Country?
    
    var name: String {
        country?.name ?? "Null title"
    }
    
    var capital: String {
        country?.capital ?? "Null capital"
    }
    
    var region: String {
        country?.region ?? "Null region"
    }
    
    init(country: Country?) {
        self.country = country
    }
    
}
