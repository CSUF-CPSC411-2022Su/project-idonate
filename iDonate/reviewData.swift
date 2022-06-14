//
//  reviewData.swift
//  iDonate
//
//  Created by csuftitan on 6/11/22.
//

import SwiftUI

struct Data: Identifiable {
    var id = UUID()
    var location: String
    var address: String
    //var reviews: String
}

struct reviewList{
    static let list = [
        Data(location: "Tempo Urban Kitchen", address: "1060 E Imperial Hwy, Brea, CA 92821"),
        Data(location: "Fraise Cafe", address: "2504 E Chapman Ave, Fullerton, CA 92831"),
        Data(location: "Summit House Restaurant", address: "2000 E Bastanchury Rd, Fullerton, CA, 92835"),
        Data(location: "Shorty'z", address: "1631 N Placentia Ave, Fullerton, CA 92831"),
        Data(location: "Rubio's Coastal Grill", address: "127 Yorba Linda Blvd, Placentia, CA 92870"),
        Data(location: "The Whole Enchilada", address: "106 Yorba Linda Blvd, Placentia, CA 92870"),
        Data(location: "Gina Maria's Pizzeria", address: "1525 N Placentia Ave, Placentia, CA 92870"),
        Data(location: "Rigoberto's", address: "1974 N Placentia Ave, Fullerton, CA 92831"),
        Data(location: "Tony's Little Italy", address: "1808 N Placentia Ave B, Placentia, CA 92870"),
        Data(location: "Market Fresh Grill Cafe", address: "221 W Orangethorpe Ave, Placentia, CA 92870")
    ]
}

