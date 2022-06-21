//
//  review.swift
//  iDonate
//
//  Created by csuftitan on 6/8/22.
//

import SwiftUI

struct review: View {
    @State var review: String = ""
    @State var manager = reviewManager()
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
                    .padding()
                HStack{
                    TextField("Write a review...", text: $review)
                        .frame(width: 250)
                    Button{
                            manager.reviewText(review)
                    }label: {
                        Text("Save")
                            .frame(width: 50)
                    }
                }
                List{
                    ForEach(manager.reviews.sorted(), id: \.self){
                        text in
                        HStack{
                            Text(review)
                        }
                    }
                }
                Spacer()
            }
            
        }
        .navigationTitle("Reviews")
    }
}

/*struct listOfReviews: View {
    @Binding var review: String
    var body: some View {
        
    }
    
}*/

struct review_Previews: PreviewProvider {
    static var previews: some View {
        review(locations: reviewList.list.first!)
    }
}
