//
//  ContentView.swift
//  iDonate
//
//  Created by csuftitan on 6/8/22.
//

import SwiftUI

var locations: [Data] = reviewList.list

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(locations, id: \.id){data in
                NavigationLink(destination: review(locations: data), label: {
                    VStack(alignment: .leading, spacing: 5){
                        Text(data.location)
                            .fontWeight(.semibold)
                        Text(data.address)
                            .fontWeight(.light)
                            .font(.caption)
                    }.padding(.vertical, 5)
                })
            }
            .navigationTitle("Locations")
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
