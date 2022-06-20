//
//  ContentView.swift
//  iDonate
//
//  Created by csuftitan on 6/8/22.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Where would you like to give or recieve a food donation?")
                        .padding()
                }
                NavigationLink(destination: inventoryView()) {
                        Text("Location 1")
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
