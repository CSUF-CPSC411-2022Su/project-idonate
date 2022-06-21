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
                        Text("Location 1")
                        .padding()
                }
                NavigationLink(destination: location2View()) {
                        Text("Location 2")
                        .padding()
                }
                NavigationLink(destination: location3View()) {
                        Text("Location 3")
                        .padding()
                }
                NavigationLink(destination: location4View()) {
                        Text("Location 4")
                        .padding()
                }
            }
        }
    }
}

struct inventoryView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
