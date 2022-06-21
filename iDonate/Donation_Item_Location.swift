//
//  ContentView.swift
//  iDonate
//
//  Created by csuftitan on 6/8/22.
//

import SwiftUI
import Combine

var foods: [FoodData] = foodList.list
var locations: [Data] = LocationList.list


struct ContentView: View {
    @ObservedObject var donationList = DonationList()
    @State var item: String = ""
    @State var itemAddMessage: String = ""
    @State var list = [String]()
    

    func addNewItem() {
        if item != "" {
            donationList.donations.append(Donation(DonationItem: item))
        }
        self.item = ""
    }
    
    var body: some View {
        NavigationView{
            VStack{
                VStack{
                    HStack {
                        VStack{
                            Text("Input the food you want to donate")
                            HStack{
                                TextField("Food", text: $item)
                                Button(action: self.addNewItem, label: {
                                    Text("Add")
                            }
                                )}
                        }
                    }.padding()
                    List(self.donationList.donations){ donation in
                        Text(donation.DonationItem)
                    }
                }

                VStack{
                    NavigationLink(destination: LocationsView()) {
                        Text("Locations")
                    }
                    }
                Spacer()
                .navigationTitle(Text("Donation"))
            }
        }
        
    }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
