//
//  Persistance.swift
//  iDonate
//
//  Created by csuftitan on 6/26/22.
//

import Foundation
import SwiftUI

class WriteReviews: ObservableObject {
    @Published var searchStrings: [String] = []
    var maxreviews: Int = 5
    var fileURL: URL

    init() {
        // TODO: Create a path to a file named crosswalks.plist and store in fileURL
        let documentsDirectory =
            FileManager.default.urls(for: .documentDirectory,
                                     in: .userDomainMask).first!
        fileURL =
            documentsDirectory.appendingPathComponent("reviews")
                .appendingPathExtension("plist")
        // Delete this line and replace with your code

        loadReviews()
    }

    func addSearchString(_ searchString: String) {
        if searchStrings.count == maxreviews {
            searchStrings.remove(at: maxreviews - 1)
        }
        searchStrings.insert(searchString, at: 0)
        saveReviews()
    }

    func saveReviews() {
        // TODO: Save the searchStrings array into a file
        let propertyListEncoder = PropertyListEncoder()
        if let encodedVolunteer = try? propertyListEncoder.encode(searchStrings) {
            try? encodedVolunteer.write(to: fileURL,
                                        options: .noFileProtection)
        }
    }

    func loadReviews() {
        // TODO: Load data from the file and store it in searchStrings
        let propertyListDecoder = PropertyListDecoder()
        if let retrievedVolunteer = try? Data(contentsOf: fileURL),
           let decodedVolunteer = try?
           propertyListDecoder.decode([String].self,
                                      from: retrievedVolunteer)
        {
            searchStrings = decodedVolunteer
        }
    }
}
