//
//  Location_Detail.swift
//  iDonate
//
//  Created by csuftitan on 6/19/22.
//

import SwiftUI

struct LocationDetailView: View {
    var locations: Data
    
    var body: some View {
        NavigationView{
            VStack {
                Text(locations.location)
                Text(locations.address)
            }
        }
        .navigationTitle("Detail")
    }
}
