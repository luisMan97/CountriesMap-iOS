//
//  CountriesRepository.swift
//  CountriesMap-iOS
//
//  Created by Jorge Luis Rivera Ladino on 7/07/20.
//  Copyright © 2020 Jorge Luis Rivera Ladino. All rights reserved.
//

import Foundation
import Combine

class CountriesRepository: ObservableObject {
    
    private var cancellable: AnyCancellable?
    
    // Output Events
    @Published var countries: [Country] = []
    @Published var showProgress = false
    @Published var responseError: ResponseError?
    
    func getCountries() {
        showProgress = true
        
        cancellable = APIManager.request(service: .Countries)
            .sink(receiveCompletion: { [weak self] completion in
                if case let .failure(error) = completion {
                    self?.responseError = ResponseError(message: error.localizedDescription)
                }
                
                self?.showProgress = false
            }, receiveValue: { [weak self] countries in
                self?.countries = countries
            })
    }
    
}

