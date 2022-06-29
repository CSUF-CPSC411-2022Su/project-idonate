//
//  ContentView.swift
//  iDonate
//
//  Created by Daniel on 6/8/22.
//

import Combine
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
            RecommendationDisplay()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Recipe")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
