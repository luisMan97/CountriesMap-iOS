//
//  CountriesCoordinator.swift
//  CountriesMap-iOS
//
//  Created by Jorge Luis Rivera Ladino on 7/07/20.
//  Copyright © 2020 Jorge Luis Rivera Ladino. All rights reserved.
//

import Foundation

class CountriesCoordinator {
    
    func start(repository: CountriesRepository = CountriesRepository()) -> CountriesView {
        return showApodListView(repository: repository)
    }
    
    private func showApodListView(repository: CountriesRepository) -> CountriesView {
        let viewModel = CountriesViewModel(repository: repository)
        return CountriesView(viewModel: viewModel)
    }
    
    func showCountryRow(country: Country, onTap: @escaping () -> ()) -> CountryRow {
        let viewModel = CountryViewModel(country: country)
        return CountryRow(viewModel: viewModel, onTap: onTap)
    }
    
    func presentCountryDetailView(with country: Country?) -> CountryDetailView {
        return CountryDetailCoordinator().start(country: country)
    }
    
}
