//
//  FoodData.swift
//  iDonate
//
//  Created by Daniel on 6/12/22.
//

import SwiftUI

struct FoodData: Identifiable {
    var id = UUID()
    var foodName: String
    var ingredients: String
    var numberOfCalories: String
    var cookTime: String
    var linkToRecipe: String
}

enum FoodList {
    static let FoodLists = [
        FoodData(foodName: "Sushi", ingredients: "White Rice, Rice Wine Vinegar, Sugar, Tuna, Salmon, Hamachi, Wasabi", numberOfCalories: "300", cookTime: "3 Hours", linkToRecipe: "https://www.japanesecooking101.com/tag/sushi"),
        FoodData(foodName: "Ramen", ingredients: "Flour Noodles / Egg Noodles, Broth, Eggs, Pork, Beef, Chicken, Green Onion, Onion, Garlic", numberOfCalories: "300", cookTime: "3 Hours", linkToRecipe: "https://www.justonecookbook.com/japanese-ramen-guide/"),
        FoodData(foodName: "Hamburger", ingredients: "Hamburger Buns, Beef, Lettuce, Tomato, Onion", numberOfCalories: "300", cookTime: "3 Hours", linkToRecipe: "https://www.allrecipes.com/recipe/25473/the-perfect-basic-burger/"),
        FoodData(foodName: "Fish and Chips", ingredients: "Cod, Haddock, Flounder, Potatoes", numberOfCalories: "300", cookTime: "3 Hours", linkToRecipe: "https://www.thespruceeats.com/best-fish-and-chips-recipe-434856")
    ]
}
