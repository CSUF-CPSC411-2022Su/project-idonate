//
//  inventoryView.swift
//  iDonate
//
//  Created by csuftitan on 6/19/22.
//

import SwiftUI
var location1Inst = inventory1()
struct location1View: View {
    @State private var donate: Int = 0
    @State private var receive: Int = 0
    var body: some View {
        Text("Location 1")
        .padding()
        List {
            ForEach(location1Inst.food.sorted(by: <), id: \.key) { key, value in
                        Section(header: Text(key)) {
                            Text("\(value)")
                        }
                    Stepper("How many \(key)(s) do you want to donate (Maximum of 10)?", value: $donate, in: 0...10)
                    Button("Confirm", action: {
                        location1Inst.food.updateValue(value + donate, forKey: key)
                    })
                    Text("You donated \(donate) \(key)(s)")
                    .padding()
                    Stepper("How many \(key)(s) do you want to receive (Maximum of 10)?", value: $receive, in: 0...10)
                    Button("Confirm", action: {
                        location1Inst.food.updateValue(value - receive, forKey: key)
                    })
                    Text("You received \(receive) \(key)(s)")
                    .padding()
            }
        }
    }
}

struct location1Inst_Previews: PreviewProvider {
    static var previews: some View {
        location1View()
    }
}

