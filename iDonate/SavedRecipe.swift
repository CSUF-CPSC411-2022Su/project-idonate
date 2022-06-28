//
//  SavedRecipe.swift
//  iDonate
//
//  Created by Daniel on 6/26/22.
//

import SwiftUI

struct SavedRecipe: View {
    @State var food = RecommendationDisplay()

    var body: some View {
        VStack {
            // This view displays the user's saved recipe.
            RecipeWebView(URL: URL(string: "\(food.url.saveRecipe)"))
                .navigationTitle("\(food.url.saveName)")
        }.preferredColorScheme(.dark)
    }
}

struct SavedRecipe_Previews: PreviewProvider {
    static var previews: some View {
        SavedRecipe()
    }
}
