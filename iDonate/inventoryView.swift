//
//  inventoryView.swift
//  iDonate
//
//  Created by csuftitan on 6/19/22.
//

import SwiftUI
var foodView = inventory()
struct inventoryView: View {
    var body: some View {
        Text("Location 1")
        .padding()
        List {
            ForEach(foodView.food.sorted(by: <), id: \.key) { key, value in
                        Section(header: Text(key)) {
                            Text("\(value)")
                        }
                    }
                }
  }
}

struct inventoryView_Previews: PreviewProvider {
    static var previews: some View {
        inventoryView()
    }
}

