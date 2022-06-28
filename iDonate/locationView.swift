//
//  inventoryView.swift
//  iDonate
//
//  Created by csuftitan on 6/19/22.
//

import SwiftUI
struct locationView: View {
    @StateObject var locationInst = inventory()
    @State var name: String
    @SceneStorage("donate") var donate: Int = 0
    @SceneStorage("receive") var receive: Int = 0
    var body: some View {
        Text(name)
            .padding()
            .preferredColorScheme(.dark)
        List {
            ForEach(locationInst.food.sorted(by: <), id: \.key) { key, value in
                Section(header: Text(key)) {
                    Text("\(value)")
                }
                Stepper("How many \(key)(s) do you want to donate (Maximum of 10)?", value: $donate, in: 0...10)
                Button("Confirm", action: {
                    locationInst.food.updateValue(value + donate, forKey: key)
                })
                Text("You donated \(donate) \(key)(s)")
                    .padding()
                Stepper("How many \(key)(s) do you want to receive (Maximum of 10)?", value: $receive, in: 0...10)
                Button("Confirm", action: {
                    locationInst.food.updateValue(value - receive, forKey: key)
                })
                Text("You received \(receive) \(key)(s)")
                    .padding()
            }
        }
    }
}

struct locationInst_Previews: PreviewProvider {
    static var previews: some View {
        locationView(name: "")
    }
}
