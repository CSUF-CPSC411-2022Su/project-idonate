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
    var linkToRecipe: String
}

let FoodLists = [
    FoodData(foodName: "Sushi",
             ingredients: "White Rice, Rice Wine Vinegar, Sugar, Tuna, Salmon, Hamachi, Wasabi",
             linkToRecipe: "https://www.japanesecooking101.com/tag/sushi"),
    FoodData(foodName: "Ramen",
             ingredients: "Flour Noodles / Egg Noodles, Broth, Eggs, Pork, Beef, Chicken, Green Onion, Onion, Garlic",
             linkToRecipe: "https://www.justonecookbook.com/japanese-ramen-guide/"),
    FoodData(foodName: "Hamburger",
             ingredients: "Hamburger Buns, Ground Beef, Lettuce, Tomato, Onion, Egg, Salt, Black Pepper, Bread Crumbs",
             linkToRecipe: "https://www.allrecipes.com/recipe/25473/the-perfect-basic-burger/"),
    FoodData(foodName: "Fish and Chips",
             ingredients: "Cod, Haddock, Flounder, All-Purpose Flour, Cornstarch, Baking Powder, Salt, Black Pepper, Dark Beer, Water, Potatoes, Vegetable Oil",
             linkToRecipe: "https://www.thespruceeats.com/best-fish-and-chips-recipe-434856"),
    FoodData(foodName: "Macaroni and Cheese",
             ingredients: "Elbow Macaroni, Butter, All-Purpose Flour, Milk, Cheddar Cheese, Parmesan Cheese, Bread Crumbs, Paprika",
             linkToRecipe: "https://www.allrecipes.com/recipe/11679/homemade-mac-and-cheese/"),
    FoodData(foodName: "Crepes",
             ingredients: "All-Purpose Flour, Eggs, Milk, Water, Salt, Butter",
             linkToRecipe: "https://www.allrecipes.com/recipe/16383/basic-crepes/"),
    FoodData(foodName: "Pancakes",
             ingredients: "All-Purpose Flour, Baking Powder, Salt, White Sugar, Milk, Egg, Butter",
             linkToRecipe: "https://www.allrecipes.com/recipe/21014/good-old-fashioned-pancakes/"),
    FoodData(foodName: "French Toast",
             ingredients: "All-Purpose Flour, Milk, Egg, White Sugar, Vanilla Extract, Ground Cinnamon, Salt, Bread",
             linkToRecipe: "https://www.allrecipes.com/recipe/16895/fluffy-french-toast/"),
    FoodData(foodName: "Bruschetta",
             ingredients: "French Bread, Extra-Virgin Olive Oil, Tomatoes, Basil, Parmesan Cheese, Garlic, Balsamic Vinegar, Salt, Black Pepper",
             linkToRecipe: "https://www.allrecipes.com/recipe/54165/balsamic-bruschetta/"),
    FoodData(foodName: "Chicken Wings",
             ingredients: "Olive Oil, Garlic, Chili Powder, Garlic Powder, Black Pepper, Chicken Wings",
             linkToRecipe: "https://www.allrecipes.com/recipe/187822/baked-chicken-wings/"),
    FoodData(foodName: "French Onion Soup",
             ingredients: "Unsalted Butter, Onions, Dry Sherry, Sherry Vinegar, Chicken Broth, Beef Broth, Fresh Thyme, Black Pepper, French Bread",
             linkToRecipe: "https://www.allrecipes.com/recipe/223049/american-french-onion-soup/"),
    FoodData(foodName: "Chicken Noodle Soup",
             ingredients: "Butter, Onion, Celery, Chicken Broth, Vegetable Broth, Chicken Breast, Egg Noodles, Carrots, Dried Basil, Dried Oregano, Black Pepper",
             linkToRecipe: "https://www.allrecipes.com/recipe/26460/quick-and-easy-chicken-noodle-soup/"),
    FoodData(foodName: "Clam Chowder",
             ingredients: "Clams, Onions, Celery, Potatoes, Carrots, Butter, All-Purpose Flour, Half-and-Half Cream, Red Wine Vinegar, Salt, Black Pepper",
             linkToRecipe: "https://www.allrecipes.com/recipe/13041/my-best-clam-chowder/"),
    FoodData(foodName: "Vanilla Ice Cream",
             ingredients: "White Sugar, Heavy Whipping Cream, Milk, Vanilla Extract",
             linkToRecipe: "https://www.allrecipes.com/recipe/233928/how-to-make-vanilla-ice-cream/"),
    FoodData(foodName: "Pulled Pork",
             ingredients: "Vegetable Oil, Pork Shoulder Roast, Barbeque Sauce, Apple Cider Vinegar, Chicken Broth, Light Brown Sugar, Yellow Mustard, Worcestershire Sauce, Chili Powder, Onion, Garlic, Dried Thyme, Butter",
             linkToRecipe: "https://www.allrecipes.com/recipe/92462/slow-cooker-texas-pulled-pork"),
    FoodData(foodName: "Banana Bread",
             ingredients: "All-Purpose Flour, Baking Soda, Salt, Butter, Brown Sugar, Eggs, Bananas",
             linkToRecipe: "https://www.allrecipes.com/recipe/20144/banana-banana-bread/"),
    FoodData(foodName: "Meatloaf",
             ingredients: "Ground Beef, Egg, Onion, Milk, Bread Crumbs, Salt, Black Pepper, Brown Sugar, Mustard, Ketchup",
             linkToRecipe: "https://www.allrecipes.com/recipe/16354/easy-meatloaf/"),
    FoodData(foodName: "Lasagna",
             ingredients: "Sweet Italian Sausage, Lean Ground Beef, Onion, Crushed Tomatoes, Tomato Paste, Canned Tomato Sauce, Water, White Sugar, Dried Basil Leaves, Fennel Seeds, Italian Seasoning, Salt, Black Pepper, Fresh Parsley, Lasagna Noodles, Ricotta Cheese, Egg, Mozzarella Cheese, Parmesan Cheese",
             linkToRecipe: "https://www.allrecipes.com/recipe/23600/worlds-best-lasagna/"),
    FoodData(foodName: "Potato Salad",
             ingredients: "Potatoes, Egg, Celery, Onion, Sweet Pickle Relish, Mayonnaise, Mustard, Garlic Salt, Celery Salt, Black Pepper",
             linkToRecipe: "https://www.allrecipes.com/recipe/16729/old-fashioned-potato-salad/"),
    FoodData(foodName: "Grilled Salmon",
             ingredients: "Salmon Fillets, Lemon Pepper, Garlic Powder, Salt, Soy Sauce, Brown Sugar, Water, Vegetable Oil",
             linkToRecipe: "https://www.allrecipes.com/recipe/12720/grilled-salmon-i/")
]
