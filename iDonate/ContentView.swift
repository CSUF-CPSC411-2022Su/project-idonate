//
//  ContentView.swift
//  iDonate
//
//  Created by csuftitan on 6/29/22.
//

import Foundation
import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            inventoryView()
                .tabItem {
                    Image(systemName: "plus")
                    Text("Inventory")
                }
            AddDonation()
                .tabItem {
                    Image(systemName: "plus")
                    Text("Donation")
                }
            Location()
                .tabItem {
                    Image(systemName: "plus")
                    Text("Review")
                }
            RecommendationDisplay()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Recipe")
                }
        }

    }
}
