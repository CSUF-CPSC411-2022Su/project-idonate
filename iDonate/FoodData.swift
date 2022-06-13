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
    var foodImages: String
    var ingredients: String
//    var cookTime: String
}

struct FoodList {
    static let FoodLists = [
        FoodData(foodName: "Sushi", foodImages: "Sushi", ingredients: "White Rice, Rice Wine Vinegar, Sugar, Tuna, Salmon, Hamachi, Wasabi"),
        FoodData(foodName: "Ramen", foodImages: "Ramen", ingredients: "Flour Noodles / Egg Noodles, Broth, Eggs, Pork, Beef, Chicken, Green Onion, Onion, Garlic"),
        FoodData(foodName: "Hamburger", foodImages: "Hamburger", ingredients: "Hamburger Buns, Beef, Lettuce, Tomato, Onion"),
        FoodData(foodName: "Fish and Chips", foodImages: "Fish and Chips", ingredients: "Cod, Haddock, Flounder, Potatoes")
    ]
}


