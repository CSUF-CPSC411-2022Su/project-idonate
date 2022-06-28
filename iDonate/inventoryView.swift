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
                NavigationLink(destination: location1View()) {
                    Text("Friendly Center")
                        .padding()
                }
                NavigationLink(destination: location2View()) {
                    Text("Meals on Wheeels")
                        .padding()
                }
                NavigationLink(destination: location3View()) {
                    Text("Assistance League of Fullerton")
                        .padding()
                }
                NavigationLink(destination: location4View()) {
                    Text("First Lutheran Church - Fullerton")
                        .padding()
                }
                NavigationLink(destination: location5View()) {
                    Text("Hub of Hope")
                        .padding()
                }
                NavigationLink(destination: location6View()) {
                    Text("Pathways of Hope")
                        .padding()
                }
                NavigationLink(destination: location7View()) {
                    Text("Orange County Food Bank")
                        .padding()
                }
                NavigationLink(destination: location8View()) {
                    Text("Family Support Network")
                        .padding()
                }
                NavigationLink(destination: location9View()) {
                    Text("First Lutheran Church - Food Distribution Center")
                        .padding()
                }
//                NavigationLink(destination: location10View()) {
//                    Text("First Lutheran Church - Food Distribution Center")
//                        .padding()
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
