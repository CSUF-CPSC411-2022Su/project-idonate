//
//  review.swift
//  iDonate
//
//  Created by csuftitan on 6/8/22.
//

import SwiftUI

struct review: View {
    @State var review: String = ""
    var locations: Data
    
    var body: some View {
        NavigationView{
            VStack{
                Text(locations.location)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(height: 30)
                    
                Text(locations.address)
                    .fontWeight(.regular)
                    .font(.subheadline)
                HStack{
                    TextField("Write a review...", text: $review)
                        .frame(width: 250)
                    Button{
                        print("Save")
                    }label: {
                        Text("Save")
                            .frame(width: 50)
                    }
                }
                
                Spacer()
            }
            
        }
        .navigationTitle("Reviews")
    }
}

struct review_Previews: PreviewProvider {
    static var previews: some View {
        review(locations: reviewList.list.first!)
    }
}
