//
//  inventory.swift
//  iDonate
//
//  Created by csuftitan on 6/8/22.
//

import Foundation

class inventory: ObservableObject {
    @Published var food = ["chicken": 100, "beef": 100, "bread": 100, "banana": 100, "strawberry": 100, "mango": 100, "onion": 100]
}
