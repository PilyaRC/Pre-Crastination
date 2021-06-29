//
//  ListView.swift
//  Pre-Crastination
//
//  Created by PiliavskyiMBP on 30.06.2021.
//

import SwiftUI

struct ListView: View {

    @State var items: [String] = [
        "Личные",
        "Работа",
        "Фильмы для просмотра"

    ]

    var body: some View {
        List {
            ForEach(items, id: \.self) { item in ListRowView(title: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Список дел")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination:
                    AddView())
        )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}

