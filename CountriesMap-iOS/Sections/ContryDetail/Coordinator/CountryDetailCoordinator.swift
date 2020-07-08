//
//  CountryDetailCoordinator.swift
//  CountriesMap-iOS
//
//  Created by Jorge Luis Rivera Ladino on 7/07/20.
//  Copyright © 2020 Jorge Luis Rivera Ladino. All rights reserved.
//

import Foundation

class CountryDetailCoordinator {
    
    func start(country: Country?) -> CountryDetailView {
        return showCountryDetailView(country: country)
    }
    
    private func showCountryDetailView(country: Country?) -> CountryDetailView {
        let viewModel = CountryDetailViewModel(country: country)
        return CountryDetailView(viewModel: viewModel)
    }
    
}
