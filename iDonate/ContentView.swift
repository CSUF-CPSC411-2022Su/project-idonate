//
//  ContentView.swift
//  iDonate
//
//  Created by Daniel on 6/8/22.
//

import SwiftUI

struct ContentView: View {
    @State var text = ""
    var columns = Array(repeating: GridItem(.flexible()), count: 2)
    
    var body: some View {
        NavigationView {
            VStack {
                // Calls the FoodRecommendationsFilter.
                FoodRecommendationsFilter(text: $text)
                    .navigationTitle("Food Recommendation")
                    .preferredColorScheme(.dark)

                // This will display the name and image of the food(s) that is being filtered from the list of foods.
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(FoodList.FoodLists.filter({"\($0)".contains(text) || text.isEmpty})) { i in
                            NavigationLink(destination: Recipe(recipe: i), label: {
                                VStack {
                                    Text(i.foodName)
                                    Image(i.foodImages)
                                        .resizable()
                                        .scaledToFit()
                                }
                                .padding(.horizontal)
                                .frame(width: 170, height: 170)
                            })
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
