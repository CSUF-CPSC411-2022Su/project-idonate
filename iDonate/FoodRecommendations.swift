//
//  FoodRecommendations.swift
//  iDonate
//
//  Created by Daniel on 6/8/22.
//

import SwiftUI

struct FoodRecommendationsFilter: View {
    @Binding var text: String
    @State private var editing = false
    
    var body: some View {
        HStack {
            // Gets the user's input.
            TextField("Enter Food Ingredients", text: $text)
                .padding(15)
                .padding(.horizontal, 25)
                .background(Color(.systemGray5))
                .foregroundColor(.white)
                .cornerRadius(10)
                .overlay {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 15)
                        
                        // This checks to see if there is any editing in the search bar.
                        // If so, the ones that are being filtered out will be colored gray.
                        if editing {
                            Button(action: {
                                self.text = ""
                            }, label: {
                                Image(systemName: "multiply.circle.fill")
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 8)
                            })
                        }
                    }
                }.onTapGesture {
                    self.editing = true
                }
            
            // This creates the cancel button on the right hand side of the search bar.
            if editing {
                Button(action: {
                    self.editing = false
                    
                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                }) {
                    Text("Cancel")
                }
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
            }
        }
    }
}
