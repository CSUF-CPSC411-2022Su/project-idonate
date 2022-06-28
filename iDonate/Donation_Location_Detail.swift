//
//  Location_Detail.swift
//  iDonate
//
//  Created by csuftitan on 6/19/22.
//

import MapKit
import SwiftUI

struct LocationDetailView: View {
    var locations: Data

    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 33.8385378, longitude: -117.9388131),
        span: MKCoordinateSpan(latitudeDelta: 0.3, longitudeDelta: 0.3))

    var body: some View {
        NavigationView {
            VStack {
                Text(locations.location)
                    .font(.headline)
                Text(locations.address)
                    .font(.subheadline)
                    .padding()
                Spacer()
                Text("We accpet:")
                HStack{
                ForEach(locations.food, id: \.self) {
                    food in
                        Text(food)
                }
                }
                Spacer()
                    Map(coordinateRegion: $region, annotationItems: LocationList.list) {
                        Data in
                        MapPin(coordinate: Data.coordinate,
                               tint: Color.purple)
                    }
                }
                .navigationTitle("Detail")
            }.navigationBarHidden(true)
        }
    }
