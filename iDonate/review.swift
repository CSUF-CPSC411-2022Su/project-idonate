//
//  review.swift
//  iDonate
//
//  Created by csuftitan on 6/8/22.
//

import SwiftUI

struct review: View {
    @State var review: String = ""
    @StateObject var manager = reviewManager()
    @StateObject var finder = CrosswalkFinder()
    @AppStorage("text") var feedback :String?
    
    var locations: Data
    
    var body: some View {
        NavigationView{
            VStack{
                Button(action: {
                    finder.find(locations.location)
                }) {
                    Text("Directions")
                }
                Image(uiImage: finder.image)
                Spacer()
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
                        manager.reviews.append(listOfReviews(feedback: review))
                        if let text = feedback{
                            feedback = text
                        }
                    }label: {
                        Text("Save")
                            .frame(width: 50)
                    }
                }
                List{
                    ForEach(manager.reviews){
                        text in
                        HStack{
                            Text(text.feedback)
                        }
                    }
                }
                Spacer()
            }
            
        }.environmentObject(manager)
        .navigationTitle("Reviews")
    }
}



struct review_Previews: PreviewProvider {
    static var previews: some View {
        review(locations: reviewList.list.first!)
    }
}
