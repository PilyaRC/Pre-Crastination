//
//  ListRowView.swift
//  Pre-Crastination
//
//  Created by PiliavskyiMBP on 30.06.2021.
//

import SwiftUI

struct ListRowView: View {

    let title: String

    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(title: "Идеи")
    }
}
