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
    @StateObject var finder = LocationFinder()
    @StateObject var reviewDisplay = WriteReviews()
    @SceneStorage("text") var feedback: String?
    
    var locations: donatingPlace
    
    var body: some View {
        NavigationView {
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
                    Button(action: {
                        if review != "" {
                            reviewDisplay.addSearchString(review)
                        }
                    }) {
                        Text("Save")
                    }
                }
                List(reviewDisplay.searchStrings, id: \.self) {
                    storedSearchString in
                    Text(storedSearchString)
                }
                
                /* ForEach(manager.reviews){
                         text in
                      HStack{
                          TextField("Write a review...", text: $review)
                              .frame(width: 250)
                          Button(action: {
                              if review != ""{
                                  reviewDisplay.addSearchString(review)
                              }
                          }) {
                              Text("Save")
                          }
                      }
                      List(reviewDisplay.searchStrings, id: \.self) {
                          storedSearchString in
                          Text(storedSearchString)
                      }
                    
                 }*/
            }
            Spacer()
            
        }.environmentObject(manager)
            // .navigationBarTitle(Text("Reviews"), displayMode: .inline)
            .navigationTitle("Reviews")
    }
}

struct review_Previews: PreviewProvider {
    static var previews: some View {
        review(locations: reviewList.list.first!)
    }
}
