//
//  Location2.swift
//  iDonate
//
//  Created by csuftitan on 6/20/22.
//

import SwiftUI
var location2Inst = inventory2()
struct location2View: View {
    var body: some View {
        Text("Location 2")
        .padding()
        List {
            ForEach(location2Inst.food.sorted(by: <), id: \.key) { key, value in
                        Section(header: Text(key)) {
                            Text("\(value)")
                        }
                    }
                }
  }
}

struct location2View_Previews: PreviewProvider {
    static var previews: some View {
        location2View()
    }
}
