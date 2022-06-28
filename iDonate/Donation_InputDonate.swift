//
//  Donation_InputDonate.swift
//  iDonate
//
//  Created by csuftitan on 6/27/22.
//

import Combine
import Foundation
import SwiftUI

var foods: [FoodData] = foodList.list

struct AddDonation: View {
    @ObservedObject var donationList = DonationList()
    @AppStorage("item") var item: String = ""
    @State var list = [String]()

    // if user input item, it will add to the donationList
    func addNewItem() {
        if item != "" {
            donationList.donations.append(Donation(DonationItem: item))
            item = ""
        }
    }

    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    HStack {
                        VStack {
                            // user input - what they want to donate
                            Text("Input the food you want to donate")
                            HStack {
                                TextField("Food", text: $item)
                                // add button - allow user to add
                                Button(action: self.addNewItem, label: {
                                    Text("Add")
                                })
                            }
                        }
                    }.padding()
                    // print donationList array to view
                    EditButton()
                    List {
                        ForEach(donationList.donations) {
                            donation in
                            Text(donation.DonationItem)
                                .font(.subheadline)
                        }.onDelete {
                            offset in
                            donationList.donations.remove(atOffsets: offset)
                        }
                    }
                }
                .padding()

                // link to view show all the locations
                VStack {
                    NavigationLink(destination: LocationsView()) {
                        Text("Locations")
                    }
                }
                Spacer()
                    .navigationTitle(Text("Donation"))
            }
        }.preferredColorScheme(.dark)
    }
}
