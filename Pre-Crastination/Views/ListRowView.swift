//
//  ListRowView.swift
//  Pre-Crastination
//
//  Created by PiliavskyiMBP on 30.06.2021.
//

import SwiftUI

struct ListRowView: View {

    let item: ItemModel

    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical,  8)
    }
}

struct ListRowView_Previews: PreviewProvider {

    static var item1 = ItemModel(title: "Личные", isCompleted: false)
    static var item2 = ItemModel(title: "Работа", isCompleted: true)
    
    static var previews: some View {
        Group {
            ListRowView(item: item1)
            ListRowView(item: item2)
        }
        .previewLayout(.sizeThatFits)
    }
}
