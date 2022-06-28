//
//  Location_Detail.swift
//  iDonate
//
//  Created by csuftitan on 6/19/22.
//

import MapKit
import SwiftUI

struct LocationDetailView: View {
    @State var locations: [Data]

    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 33.8385378, longitude: -117.9388131),
        span: MKCoordinateSpan(latitudeDelta: 0.25, longitudeDelta: 0.25))

    var body: some View {
        NavigationView {
            VStack {
                Text(locations[0].location)
                    .font(.headline)
                Text(locations[0].address)
                    .font(.subheadline)
                    .padding()
                Spacer()
                Text("We accpet:")
                HStack{
                ForEach(locations[0].food, id: \.self) {
                    food in
                        Text(food)
                }
                }
                Spacer()
                    Map(coordinateRegion: $region, annotationItems: locations) {
                        data in
                        MapPin(coordinate: data.coordinate,
                               tint: Color.purple)
                    }
                }
                .navigationTitle("Detail")
            }
        }
    }
