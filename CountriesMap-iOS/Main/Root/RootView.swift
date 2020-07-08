//
//  RootView.swift
//  CountriesMap-iOS
//
//  Created by Jorge Luis Rivera Ladino on 7/07/20.
//  Copyright © 2020 Jorge Luis Rivera Ladino. All rights reserved.
//

import SwiftUI

struct RootView: View {
    
    @EnvironmentObject var repository: CountriesRepository
    
    var body: some View {
        CountriesCoordinator().start(repository: repository)
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
