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
            // Prints location name
            Text(locations.location)
                .font(.title2)
                .fontWeight(.semibold)
                .frame(height: 30)
            // As the review page opens for the each location, below method passes the name of the location to the map finder
                .onAppear {
                    finder.find(locations.location)
                }
            // Prints location address
            Text(locations.address)
                .fontWeight(.regular)
                .font(.subheadline)
                .padding()
            // Displays image that received through the API
            Image(uiImage: finder.image)
                .padding()
            HStack {
                TextField("Write a review...", text: $review)
                    .frame(width: 250)
            //This method adds the review to the function list of reviews as we press the save button
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
            //This method displays the list of reviews
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
