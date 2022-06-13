//
//  ContentView.swift
//  iDonate
//
//  Created by csuftitan on 6/8/22.
//

import SwiftUI
var foodView = inventory()
struct ContentView: View {
    var body: some View {
//        Text("Hello, world!")
//            .padding()
        List {
            ForEach(foodView.food.sorted(by: <), id: \.key) { key, value in
                        Section(header: Text(key)) {
                            Text("\(value)")
                        }
                    }
                }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
