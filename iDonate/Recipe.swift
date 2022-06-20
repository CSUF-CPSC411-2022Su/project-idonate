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
        VStack {
            HStack {
                Text(recipe.foodName)
                    .bold()
                    .modifier(TitleModifer())
                Spacer()
            }
            HStack {
                Image(recipe.foodName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .padding()
                Spacer()
            }
            HStack {
                Text("Number of Calories: \(recipe.numberOfCalories)")
                    .modifier(VisualModifier())
                Spacer()
            }
            HStack {
                Text("Ingredients List: \(recipe.ingredients)")
                    .modifier(VisualModifier())
                Spacer()
            }
            HStack {
                Text("Time Needed to Cook: \(recipe.cookTime)")
                    .modifier(VisualModifier())
                Spacer()
            }
            HStack {
                Text("Recipe: \n")
                    .modifier(VisualModifier())
                Link("Link to Recipe", destination: URL(string: recipe.linkToRecipe)!)
                    .font(.custom("Times New Roman", size: 20))
                    .foregroundColor(Color.white)
                    .cornerRadius(30)
                    .padding(.bottom, 25)
                Spacer()
            }
            HStack {
                Button {
                    print("Saved Food Recommendation")
                } label: {
                    Text("Save Food Recommendation")
                        .bold()
                        .font(.custom("Times New Roman", size: 20))
                        .foregroundColor(Color.white)
                        .padding(15)
                        .background(Color.blue)
                        .cornerRadius(25)
                        .padding(.bottom, 30)
                }
            }
        }.preferredColorScheme(.dark)
    }
}

struct TitleModifer: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("Times New Roman", size: 40))
            .foregroundColor(Color.white)
            .padding()
            .cornerRadius(30)
    }
}

struct VisualModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("Times New Roman", size: 20))
            .foregroundColor(Color.white)
            .padding()
            .cornerRadius(30)
    }
}

struct Recipe_Previews: PreviewProvider {
    static var previews: some View {
        Recipe(recipe: FoodList.FoodLists.first!)
    }
}
