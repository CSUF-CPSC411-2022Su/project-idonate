//
//  Location3.swift
//  iDonate
//
//  Created by csuftitan on 6/20/22.
//

import SwiftUI
var location3Inst = inventory3()
struct location3View: View {
    var body: some View {
        Text("Location 3")
        .padding()
        List {
            ForEach(location3Inst.food.sorted(by: <), id: \.key) { key, value in
                        Section(header: Text(key)) {
                            Text("\(value)")
                        }
                    }
                }
  }
}

struct location3View_Previews: PreviewProvider {
    static var previews: some View {
        location3View()
    }
}
