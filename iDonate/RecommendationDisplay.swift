//
//  ContentView.swift
//  iDonate
//
//  Created by Daniel on 6/8/22.
//

import SwiftUI

struct RecommendationDisplay: View {
    @SceneStorage("savedSearch") var text = ""
    var columns = Array(repeating: GridItem(.flexible()), count: 2)
    @State var url = Recipe(recipe: FoodLists.first!)

    var body: some View {
        NavigationView {
            VStack {
                // Calls the FoodRecommendationsFilter.
                FoodRecommendationsFilter(text: $text)
                    .navigationTitle("Food Recommendation")
                    .preferredColorScheme(.dark)

                // This will display the name and image of the food(s) that is being filtered from the list of ingredients.
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(FoodLists.filter { "\($0)".contains(text) || text.isEmpty }) { i in
                            if text != i.foodName && text != i.linkToRecipe {
                                NavigationLink(destination: Recipe(recipe: i)) {
                                    VStack {
                                        Text(i.foodName)
                                            .bold()
                                            .modifier(TextModifer())
                                        Image(i.foodName)
                                            .resizable()
                                            .scaledToFit()
                                            .cornerRadius(10)
                                    }
                                    .padding(.horizontal)
                                    .frame(width: 170, height: 170)
                                }
                            }
                        }
                    }
                }
                // This creates the toolbar on the top-right hand corner which allows the user to view the saved recipe.
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        NavigationLink(destination: SavedRecipe()) {
                            Text("Load Saved Recipe")
                        }
                    }
                }
            }
        }
        .navigationBarHidden(false).animation(.linear(duration: 0.275))
    }
}

struct TextModifer: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("", size: 14))
            .foregroundColor(Color.cyan)
            .cornerRadius(30)
    }
}

struct RecommendationDisplay_Previews: PreviewProvider {
    static var previews: some View {
        RecommendationDisplay()
    }
}
