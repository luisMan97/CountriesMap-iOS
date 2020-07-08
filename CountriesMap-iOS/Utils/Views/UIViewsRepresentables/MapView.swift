//
//  MapView.swift
//  CountriesMap-iOS
//
//  Created by Jorge Luis Rivera Ladino on 7/07/20.
//  Copyright © 2020 Jorge Luis Rivera Ladino. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    var latitude: Float
    var longitude: Float
    
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.centerCoordinate =  CLLocationCoordinate2D(latitude: CLLocationDegrees(latitude), longitude: CLLocationDegrees(longitude))
        return mapView
    }

    func updateUIView(_ view: MKMapView, context: Context) {
    }
    
}
