//
//  CountryRow.swift
//  CountriesMap-iOS
//
//  Created by Jorge Luis Rivera Ladino on 7/07/20.
//  Copyright © 2020 Jorge Luis Rivera Ladino. All rights reserved.
//

import SwiftUI

struct CountryRow: View {
    
    var viewModel: CountryViewModel
    var onTap: () -> ()
    
    var body: some View {
        HStack {
            
            Button(action: {
                self.onTap()
            }, label: {
                Text("GO")
                    .font(.system(.body, design: .rounded))
                    .bold()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.green)
                    .padding()
                    .border(Color.green)
             })
            
            VStack(alignment: .leading) {
                Text(viewModel.name.uppercased())
                    .font(.system(.title, design: .rounded))
                    .bold()
                
                Text(viewModel.capital)
                    .font(.system(.body, design: .rounded))
                    .foregroundColor(.gray)
                
                Text(viewModel.region.uppercased())
                    .font(.system(.body, design: .rounded))
                    .foregroundColor(.gray)
            }.padding()
            
            /*Text(viewModel.date)
                .font(.system(.body, design: .rounded))
                .foregroundColor(.gray)*/
        }
    }
}
