//
//  ContentView.swift
//  iDonate
//
//  Created by csuftitan on 6/8/22.
//

import SwiftUI

struct ContentView: View {
    @State var item: String = ""
    @State var list = [String]()
    var body: some View {
        VStack{
            Text("Input the food you want to donate")
            TextField("Enter Food Here:",text: $item).padding()
            Spacer().overlay{
            }
            VStack{
                Text("Location You Can Donate")
                Button(action: {
                }){
                    Text("Location 1").padding()
                }
                Spacer()
                
            }}
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
