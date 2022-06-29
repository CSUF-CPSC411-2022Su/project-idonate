//
//  ContentView.swift
//  iDonate
//
//  Created by Daniel on 6/8/22.
//

import Combine
import SwiftUI

var locations: [donatingPlace] = reviewList.list

struct Location: View {
    var body: some View {
        //creates a navigation view for the list of locations
        NavigationView {
            List(locations, id: \.id) { data in
                // Links each locations of this page to the review page.
                NavigationLink(destination: review(locations: data), label: {
                    VStack(alignment: .leading, spacing: 5) {
                        // Prints location name and address
                        Text(data.location)
                            .fontWeight(.semibold)
                        Text(data.address)
                            .fontWeight(.light)
                            .font(.caption)
                    }.padding(.vertical, 5)
                })
            }
            .navigationTitle("Locations")
        // This defaults app too dark screen
        }.preferredColorScheme(.dark)
    }
}

struct Location_Previews: PreviewProvider {
    static var previews: some View {
        Location()
    }
}
