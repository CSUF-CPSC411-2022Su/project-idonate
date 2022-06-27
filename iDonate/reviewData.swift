//
//  reviewData.swift
//  iDonate
//
//  Created by csuftitan on 6/11/22.
//

import Foundation

struct Data: Identifiable {
    var id = UUID()
    var location: String
    var address: String
    //var reviews: String
}

struct reviewList{
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

struct listOfReviews: Identifiable {
    var id = UUID()
    var feedback: String
    
}

class reviewManager: ObservableObject {
    @Published var reviews: [listOfReviews] = []
    
    init(){
        
    }
    
}

