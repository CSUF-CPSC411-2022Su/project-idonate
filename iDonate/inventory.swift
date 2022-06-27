//
//  inventory.swift
//  iDonate
//
//  Created by csuftitan on 6/8/22.
//

import Foundation

class inventory1: ObservableObject {
    @Published var food = ["chicken": 100, "beef": 100, "bread": 100, "banana": 100, "strawberry": 100, "mango": 100, "onion": 100]
}

class inventory2: ObservableObject {
    @Published var food = ["chicken": 100, "beef": 100, "bread": 100, "banana": 100, "strawberry": 100, "mango": 100, "tomato": 100]
}

class inventory3: ObservableObject {
    @Published var food = ["chicken": 100, "beef": 100, "bread": 100, "banana": 100, "strawberry": 100, "mango": 100, "lettuce": 100]
}

class inventory4: ObservableObject {
    @Published var food = ["chicken": 100, "beef": 100, "bread": 100, "banana": 100, "strawberry": 100, "mango": 100, "peach": 100]
}

