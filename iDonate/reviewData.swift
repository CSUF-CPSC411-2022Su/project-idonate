//
//  reviewData.swift
//  iDonate
//
//  Created by csuftitan on 6/11/22.
//

import Foundation

struct donatingPlace: Identifiable {
    var id = UUID()
    var location: String
    var address: String
}

//Below is the list of objects of donatingPlace with parameters location and address.
enum reviewList {
    static let list = [
        donatingPlace(location: "Friendly Center", address: "147 W Rose Ave, Orange, CA 92867"),
        donatingPlace(location: "Meals On Wheels", address: "223 W Amerige Ave #1806, Fullerton, CA 92832"),
        donatingPlace(location: "Assistance League of Fullerton", address: "233 W Amerige Ave, Fullerton, CA 92832"),
        donatingPlace(location: "Hub Of Hope", address: "611 S Ford Ave, Fullerton, CA 92832"),
        donatingPlace(location: "First Lutheran Church-Fullerton", address: "215 N Lemon St, Fullerton, CA 92832"),
        donatingPlace(location: "Pathways of Hope", address: "1231 E Chapman Ave, Fullerton, CA 92831"),
        donatingPlace(location: "Orange County Food Bank", address: "11870 Monarch St, Garden Grove, CA 92841"),
        donatingPlace(location: "Family Support Network", address: "1015 S Placentia Ave, Fullerton, CA 92831"),
        donatingPlace(location: "First Lutheran Church - Food Distribution Center", address: "215 N Lemon St, Fullerton, CA 92832"),
        donatingPlace(location: "Calvary Community Church - Food Distribution Center", address: "1465 W Orangethorpe Ave, Fullerton, CA 92833")
    ]
}

struct listOfReviews: Identifiable {
    var id = UUID()
    var feedback: String
}

class reviewManager: ObservableObject {
    @Published var reviews: [listOfReviews] = []
    init() {}
}
