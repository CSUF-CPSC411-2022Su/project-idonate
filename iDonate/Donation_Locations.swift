//
//  Locations.swift
//  iDonate
//
//  Created by csuftitan on 6/20/22.
//

import Foundation

import SwiftUI

struct LocationsView: View {
    @State var locations: [Data] = LocationList.list

    var body: some View {
        NavigationView {
            VStack {
                // show all the locations
                List(locations, id: \.id) { data in
                    // link to location detail view
                    NavigationLink(destination: LocationDetailView(locations: [data]),
                                   // print location name and address
                                   label: {
                                       VStack(alignment: .leading, spacing: 5) {
                                           Text(data.location)
                                               .fontWeight(.semibold)
                                           Text(data.address)
                                               .fontWeight(.light)
                                               .font(.caption)
                                       }
                                   })
                }
            }.navigationTitle("Locations")
        }
    }
}
