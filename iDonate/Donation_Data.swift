//
//  Data.swift
//  iDonate
//
//  Created by csuftitan on 6/13/22.
//
import SwiftUI
import Combine

struct Donation: Identifiable{
    var id = UUID()
    var DonationItem = String()
}

class DonationList: ObservableObject {
    @Published var donations = [Donation]()
}

struct FoodData: Identifiable {
    var id = UUID()
    var foodName: String
}

struct foodList {
        static let list = [
            FoodData(foodName: "Apple"),
            FoodData(foodName: "Chicken"),
            FoodData(foodName: "Banan"),
            FoodData(foodName: "Bread"),
            ]
}

struct Data: Identifiable {
    var id = UUID()
    var location: String
    var address: String
}

struct LocationList{
        static let list = [
            Data(location: "Together We Rise", address: "560 W Lambert Rd, Brea, CA 92821"),
            Data(location: "Meals On Wheels", address: "223 W Amerige Ave #1806, Fullerton, CA 92832"),
            Data(location: "Assistance League of Fullerton", address: "233 W Amerige Ave, Fullerton, CA 92832"),
            Data(location: "Hub Of Hope", address: "611 S Ford Ave, Fullerton, CA 92832"),
            Data(location: "First Lutheran Church-Fullerton", address: "215 N Lemon St, Fullerton, CA 92832"),
            Data(location: "Pathways of Hope", address: "1231 E Chapman Ave, Fullerton, CA 92831"),
            Data(location: "Orange County Food Bank", address: "11870 Monarch St, Garden Grove, CA 92841"),
            Data(location: "Family Support Network", address: "1015 S Placentia Ave, Fullerton, CA 92831"),
            Data(location: "First Lutheran Church - Food Distribution Center", address: "215 N Lemon St, Fullerton, CA 92832"),
            Data(location: "Calvary Community Church - Food Distribution Center", address: "1465 W Orangethorpe Ave, Fullerton, CA 92833")
        ]
    }
