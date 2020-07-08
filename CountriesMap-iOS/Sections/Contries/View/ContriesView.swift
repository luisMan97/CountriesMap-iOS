//qu
//  CountrieView.swift
//  CountriesMap-iOS
//
//  Created by Jorge Luis Rivera Ladino on 7/07/20.
//  Copyright © 2020 Jorge Luis Rivera Ladino. All rights reserved.
//

import SwiftUI

struct CountriesView: View {
    
    @ObservedObject private var viewModel: CountriesViewModel
    @State private var willMoveToNextScreen = false
    @State private var country: Country?
    
    init(viewModel: CountriesViewModel) {
        self.viewModel = viewModel
        UINavigationBar().setup()
    }
    
    var body: some View {
        NavigationView {
            LoadingView(isShowing: $viewModel.showProgress) {
                VStack {
                    SearchBarView(searchText: self.$viewModel.searchText, showCancelButton: self.$viewModel.showCancelButton)
                        .padding(.top)
                    
                    List(self.viewModel.countriesFiltered) { country in
                        CountriesCoordinator().showCountryRow(country: country, onTap: {
                            UIApplication.shared.endEditing(true)
                            self.willMoveToNextScreen = true
                            self.country = country
                        })
                    }
                    .buttonStyle(BorderlessButtonStyle())
                }
            }
            .navigationBarItems(trailing: EmptyView()) // Or //.padding(.trailing, -32.0)
            .navigationBarTitle("Countries List")
            .resignKeyboardOnDragGesture()
        }
        .navigate(to: CountriesCoordinator().presentCountryDetailView(with: country), when: $willMoveToNextScreen)
        .alert(item: $viewModel.responseError) {
            Alert(
                title: Text("Error"),
                message: Text($0.message),
                dismissButton: .default(Text("Ok"))
            )
        }
    }
}

struct CountrieView_Previews: PreviewProvider {
    static var previews: some View {
        CountriesCoordinator().start()
    }
}
