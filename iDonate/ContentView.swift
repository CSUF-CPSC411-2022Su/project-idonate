//
//  ContentView.swift
//  iDonate
//
//  Created by Daniel on 6/8/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
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
