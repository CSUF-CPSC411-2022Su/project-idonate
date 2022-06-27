//
//  Recipe.swift
//  iDonate
//
//  Created by Daniel on 6/12/22.
//

import SwiftUI

struct Recipe: View {
    var recipe: FoodData
    @AppStorage("saveRecipe") var saveRecipe = ""
    @AppStorage("saveName") var saveName = ""

    var body: some View {
        VStack {
            // This creates the embedded webpage for the searched recipe.
            RecipeWebView(URL: URL(string: "\(recipe.linkToRecipe)"))
                .navigationTitle(recipe.foodName)
        }.preferredColorScheme(.dark)
            // This creates the toolbar that will save the user's recipe.
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button {
                        saveRecipe = recipe.linkToRecipe
                        saveName = recipe.foodName
                    } label: {
                        Label("Save", systemImage: "square.and.arrow.down")
                    }
                }
            }
    }
}

struct Recipe_Previews: PreviewProvider {
    static var previews: some View {
        Recipe(recipe: FoodLists.first!)
    }
}
