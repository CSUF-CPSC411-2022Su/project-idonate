//
//  Location2.swift
//  iDonate
//
//  Created by csuftitan on 6/20/22.
//

import SwiftUI

struct location2View: View {
    @StateObject var location2Inst = inventory1()
    @AppStorage("donate") var donate: Int = 0
    @AppStorage("receive") var receive: Int = 0
    var body: some View {
        Text("Location 2")
        .padding()
        List {
            ForEach(location2Inst.food.sorted(by: <), id: \.key) { key, value in
                        Section(header: Text(key)) {
                            Text("\(value)")
                        }
                Stepper("How many \(key)(s) do you want to donate (Maximum of 10)?", value: $donate, in: 0...10)
                Button("Confirm", action: {
                    location2Inst.food.updateValue(value + donate, forKey: key)
                })
                Text("You donated \(donate) \(key)(s)")
                .padding()
                Stepper("How many \(key)(s) do you want to receive (Maximum of 10)?", value: $receive, in: 0...10)
                Button("Confirm", action: {
                    location2Inst.food.updateValue(value - receive, forKey: key)
                })
                Text("You received \(receive) \(key)(s)")
                .padding()
                    }
                }
  }
}

struct location2View_Previews: PreviewProvider {
    static var previews: some View {
        location2View()
    }
}
