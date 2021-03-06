//
//  reviewapi.swift
//  iDonate
//
//  Created by csuftitan on 6/26/22.
//
import Foundation
import SwiftUI

struct MapsAPIResult: Codable {
    var type: String
    var query: [String]
    var features: [Area]
    var attribution: String
}

struct Area: Codable {
    var text: String
    var place_name: String
    var center: [Double]
}

class LocationFinder: ObservableObject {
    @Published var firstFoundName = ""
    @Published var image = UIImage()

    private var accessToken = "sk.eyJ1IjoiYXB1cnZhZ2F3YW5kZSIsImEiOiJjbDR3NHJvNXIxbWhwM2NuN3JwZHBwNmVxIn0.2cqYg5YVA8R6RE3kzlxP2Q"

    func find(_ searchString: String) {
        guard searchString != "" else {
            return
        }

        let mapboxSearchURL = "https://api.mapbox.com/geocoding/v5/mapbox.places/\(searchString).json?access_token=\(accessToken)"

       
        if let urlString = mapboxSearchURL.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed),
           let url = URL(string: urlString)
        {
            // Creates a task that retrieves the contents of the specified URL, then calls a handler upon completion.
            let task = URLSession.shared.dataTask(with: url) {
                data, _, _ in

                // Run the code asynchronously so the UI can be updated while we wait for a reply from the server and decode the JSON.
                DispatchQueue.main.async {
                    let jsonDecoder = JSONDecoder()
                    // Decode the JSON and store in result
                    if let validData = data, let result = try? jsonDecoder.decode(MapsAPIResult.self, from: validData) {
                        if result.features.count > 0 {
                            self.firstFoundName = result.features[0].place_name

                            
                            let long = result.features[0].center[0]
                            let lat = result.features[0].center[1] 
                            self.loadMapImage(long: long, lat: lat)
                        } else {
                            self.firstFoundName = "No results found"
                        }
                    } else {
                        self.firstFoundName = "No results found"
                    }
                }
            }
            // Runs the task (open the URL)
            task.resume()
        }
    }

    func loadMapImage(long: Double, lat: Double) {
        let zoom = 15
        let rotation = 0
        let mapboxImageURL = "https://api.mapbox.com/styles/v1/mapbox/streets-v11/static/\(long),\(lat),\(zoom),\(rotation)/300x200?access_token=\(accessToken)"

        if let url = URL(string: mapboxImageURL) {
            let task = URLSession.shared.dataTask(with: url) {
                data, _, _ in

                DispatchQueue.main.async {
                    if let validData = data, let result = UIImage(data: validData) {
                        self.image = result
                    } else {
                        self.firstFoundName = "No results found"
                    }
                }
            }
            task.resume()
        }
    }
}
