//
//  Location4.swift
//  iDonate
//
//  Created by csuftitan on 6/20/22.
//

import SwiftUI
var location4Inst = inventory4()
struct location4View: View {
    var body: some View {
        Text("Location 4")
        .padding()
        List {
            ForEach(location4Inst.food.sorted(by: <), id: \.key) { key, value in
                        Section(header: Text(key)) {
                            Text("\(value)")
                        }
                    }
                }
  }
}

struct location4View_Previews: PreviewProvider {
    static var previews: some View {
        location4View()
    }
}
