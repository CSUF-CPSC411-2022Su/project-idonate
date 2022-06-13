//
//  Recipe.swift
//  iDonate
//
//  Created by Daniel on 6/12/22.
//

import SwiftUI

struct Recipe: View {
    var recipe: FoodData
    
    var body: some View {
        VStack(spacing: 20) {
            Text(recipe.ingredients)
        }
    }
}

struct Recipe_Previews: PreviewProvider {
    static var previews: some View {
        Recipe(recipe: FoodList.FoodLists.first!)
    }
}
