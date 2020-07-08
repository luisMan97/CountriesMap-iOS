//
//  CountryDetailView.swift
//  CountriesMap-iOS
//
//  Created by Jorge Luis Rivera Ladino on 7/07/20.
//  Copyright © 2020 Jorge Luis Rivera Ladino. All rights reserved.
//

import SwiftUI
import MapKit

struct CountryDetailView: View {
    
    @ObservedObject var viewModel: CountryDetailViewModel
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            VStack {
                Text(viewModel.name)
                    .font(.custom("Times New Roman", size: 18))
                    .foregroundColor(Color(.systemBlue))
                    .padding(.top, 20)
                    .multilineTextAlignment(.center)
                
                Rectangle()
                    .background(Color.green)
                    .frame(height: 1)
            }
            
            MapView(latitude: viewModel.latitude, longitude: viewModel.longigute)
                .padding(.top, -8)
        }
        .overlay(
            HStack {
                VStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "arrow.left")
                            .font(.custom("Times New Roman", size: 18))
                    })
                    .padding(.leading, 20)
                    .padding(.top, 20)
                    
                    Spacer()
                }
                
                Spacer()
            }
        )
    }
}

/*struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailView()
    }
}*/
