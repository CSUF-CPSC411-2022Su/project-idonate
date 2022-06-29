//
//  Data.swift
//  iDonate
//
//  Created by csuftitan on 6/13/22.
//
import Combine
import MapKit
import SwiftUI

struct Donation: Identifiable {
    var id = UUID()
    var DonationItem = String()
}

class DonationList: ObservableObject {
    @Published var donations = [Donation]()
}

//struct FoodData: Identifiable {
//    var id = UUID()
//    var foodName: String
//}

//enum foodList {
////    @Published var foods:[FoodData] = ["Apple"]
//    static let list = [
//        FoodData(foodName: "Apple"),
//        FoodData(foodName: "Chicken"),
//        FoodData(foodName: "Banana"),
//        FoodData(foodName: "Bread"),
//    ]
//}

struct Data: Identifiable {
    var id = UUID()
    var location: String
    var address: String
    var latitude: Double
    var longitude: Double
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }

    var food: [String]
}

enum LocationList {
    static let list = [
        Data(location: "Friendly Center", address: "147 W Rose Ave, Orange, CA 92867", latitude: 33.796980, longitude: -117.853820, food: ["Apple", "Chicken"]),
        Data(location: "Together We Rise", address: "560 W Lambert Rd, Brea, CA 92821", latitude: 33.924310, longitude: -117.904570, food: ["Apple", "Chicken"]),
        Data(location: "Meals On Wheels", address: "223 W Amerige Ave #1806, Fullerton, CA 92832", latitude: 33.871660, longitude: -117.92753, food: ["Apple", "Chicken"]),
        Data(location: "Assistance League of Fullerton", address: "233 W Amerige Ave, Fullerton, CA 92832", latitude: 33.871660, longitude: -117.927920, food: ["Apple", "Chicken"]),
        Data(location: "Hub Of Hope", address: "611 S Ford Ave, Fullerton, CA 92832", latitude: 33.864850, longitude: -117.929910, food: ["Apple", "Chicken"]),
        Data(location: "First Lutheran Church-Fullerton", address: "215 N Lemon St, Fullerton, CA 92832", latitude: 33.871990, longitude: -117.919870, food: ["Apple", "Chicken"]),
        Data(location: "Pathways of Hope", address: "1231 E Chapman Ave, Fullerton, CA 92831", latitude: 33.8742508, longitude: -117.9056609, food: ["Apple", "Chicken"]),
        Data(location: "Orange County Food Bank", address: "11870 Monarch St, Garden Grove, CA 92841", latitude: 33.7896506, longitude: -118.0058121, food: ["Apple", "Chicken"]),
        Data(location: "Family Support Network", address: "1015 S Placentia Ave, Fullerton, CA 92831", latitude: 33.8708215, longitude: -117.9294165, food: ["Apple", "Chicken"]),
        Data(location: "First Lutheran Church - Food Distribution Center", address: "215 N Lemon St, Fullerton, CA 92832", latitude: 33.8717557, longitude: -117.9197771, food: ["Apple", "Chicken"]),
        Data(location: "Calvary Community Church - Food Distribution Center", address: "1465 W Orangethorpe Ave, Fullerton, CA 92833", latitude: 33.859222412109375, longitude: -117.9569091796875, food: ["Apple", "Chicken"]),
    ]
}
