//
//  CountryDetailViewModel.swift
//  CountriesMap-iOS
//
//  Created by Jorge Luis Rivera Ladino on 7/07/20.
//  Copyright © 2020 Jorge Luis Rivera Ladino. All rights reserved.
//

import Foundation

class CountryDetailViewModel: ObservableObject {
    
    private var country: Country?
    
    var name: String {
        country?.name ?? "Null title"
    }
    
    var latitude: Float {
        country?.latlng?.first ?? 0
    }
    
    var longigute: Float {
        country?.latlng?.last ?? 0
    }
    
    init(country: Country?) {
        self.country = country
    }
    
}
