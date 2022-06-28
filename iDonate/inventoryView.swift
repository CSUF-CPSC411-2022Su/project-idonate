//
//  inventoryView.swift
//  iDonate
//
//  Created by csuftitan on 6/20/22.
//

import SwiftUI
struct inventoryView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Where would you like to give or recieve a food donation?")
                        .padding()
                }
                NavigationLink(destination: locationView(locationInst: inventory(), name: "Friendly Center")) {
                    Text("Friendly Center")
                        .padding()
                }
                NavigationLink(destination: locationView(locationInst: inventory(), name: "Meals on Wheels")) {
                    Text("Meals on Wheels")
                        .padding()
                }
                NavigationLink(destination: locationView(locationInst: inventory(), name: "Assistance League of Fullerton")) {
                    Text("Assistance League of Fullerton")
                        .padding()
                }
                NavigationLink(destination: locationView(locationInst: inventory(), name: "Hub of Hope")) {
                    Text("Hub of Hope")
                        .padding()
                }
                NavigationLink(destination: locationView(locationInst: inventory(), name: "First Lutheran Church - Fullerton")) {
                    Text("First Lutheran Church - Fullerton")
                        .padding()
                }
                NavigationLink(destination: locationView(locationInst: inventory(), name: "Pathways of Hope")) {
                    Text("Pathways of Hope")
                        .padding()
                }
                NavigationLink(destination: locationView(locationInst: inventory(), name: "Orange County Food Bank")) {
                    Text("Orange County Food Bank")
                        .padding()
                }
                NavigationLink(destination: locationView(locationInst: inventory(), name: "Family Support Network")) {
                    Text("Family Support Network")
                        .padding()
                }
                NavigationLink(destination: locationView(locationInst: inventory(), name: "First Lutheran Church")) {
                    Text("First Lutheran Church")
                        .padding()
                }
                ////                NavigationLink(destination: locationView(locationInst: inventory(), name: "Cavalry Community Church - Food Distritbution Center")) {
                ////                    Text("Friendly Center")
                ////                        .padding()
//                }
            }
            .preferredColorScheme(.dark)
        }
    }
}

struct inventoryView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
