//
//  CountriesViewModel.swift
//  CountriesMap-iOS
//
//  Created by Jorge Luis Rivera Ladino on 7/07/20.
//  Copyright © 2020 Jorge Luis Rivera Ladino. All rights reserved.
//

import Foundation
import Combine

class CountriesViewModel: ObservableObject {
    
    private var cancellables: Set<AnyCancellable> = []
    private var repository: CountriesRepository
    
    // Input
    @Published var searchText = "" {
        didSet {
            print(searchText)
        }
    }
    @Published var showCancelButton: Bool = false {
        didSet {
            print(showCancelButton)
        }
    }
    
    // Output Events
    @Published var showProgress = false
    @Published var countries: [Country] = []
    @Published var responseError: ResponseError?
    
    var countriesFiltered: [Country] {
        return countries.filter { $0.name?.hasPrefix(searchText) ?? true || searchText == "" }
    }
    
    init(repository: CountriesRepository) {
        self.repository = repository
        showProgress = repository.showProgress
        countries = repository.countries
        responseError = repository.responseError
    }
}
