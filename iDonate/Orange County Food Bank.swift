//
//  Orange County Food Bank.swift
//  iDonate
//
//  Created by csuftitan on 6/28/22.
//

//
//  Location4.swift
//  iDonate
//
//  Created by csuftitan on 6/20/22.
//

import SwiftUI
struct location7View: View {
    @StateObject var location7Inst = inventory1()
    @SceneStorage("donate") var donate: Int = 0
    @SceneStorage("receive") var receive: Int = 0
    var body: some View {
        Text("Orange County Food Bank")
            .padding()
            .preferredColorScheme(.dark)
        List {
            ForEach(location7Inst.food.sorted(by: <), id: \.key) { key, value in
                Section(header: Text(key)) {
                    Text("\(value)")
                }
                Stepper("How many \(key)(s) do you want to donate (Maximum of 10)?", value: $donate, in: 0...10)
                Button("Confirm", action: {
                    location7Inst.food.updateValue(value + donate, forKey: key)
                })
                Text("You donated \(donate) \(key)(s)")
                    .padding()
                Stepper("How many \(key)(s) do you want to receive (Maximum of 10)?", value: $receive, in: 0...10)
                Button("Confirm", action: {
                    location7Inst.food.updateValue(value - receive, forKey: key)
                })
                Text("You received \(receive) \(key)(s)")
                    .padding()
            }
        }
    }
}

struct location7View_Previews: PreviewProvider {
    static var previews: some View {
        location7View()
    }
}

