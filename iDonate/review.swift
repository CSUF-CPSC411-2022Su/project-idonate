//
//  review.swift
//  iDonate
//
//  Created by csuftitan on 6/8/22.
//

import SwiftUI

struct review: View {
    @AppStorage("review") var review: String = ""
    @StateObject var manager = reviewManager()
    @StateObject var finder = LocationFinder()
    @AppStorage("text") var feedback: String = ""

    var locations: donatingPlace

    var body: some View {
        VStack {
            Text(locations.location)
                .font(.title2)
                .fontWeight(.semibold)
                .frame(height: 30)
                .onAppear {
                    finder.find(locations.location)
                }
            Text(locations.address)
                .fontWeight(.regular)
                .font(.subheadline)
                .padding()
            Image(uiImage: finder.image)
                .padding()
            HStack {
                TextField("Write a review...", text: $review)
                    .frame(width: 250)

                Button {
                    if feedback != "" && review != ""{
                        manager.reviews.append(listOfReviews(feedback: review))
                    }
                    
                } label: {
                    Text("Save")
                        .frame(width: 50)
                }
            }
            Text("Reviews")
                .fontWeight(.semibold)
                .padding(2)
                .frame(alignment: .leading)
            List {
                ForEach(manager.reviews) {
                    text in
                    HStack {
                        Text(text.feedback)
                    }
                }
            }
            
        }.environmentObject(manager)

        Spacer()
    }
}

struct review_Previews: PreviewProvider {
    static var previews: some View {
        review(locations: reviewList.list.first!)
    }
}
