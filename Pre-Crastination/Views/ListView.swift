//
//  ListView.swift
//  Pre-Crastination
//
//  Created by PiliavskyiMBP on 30.06.2021.
//

import SwiftUI

struct ListView: View {

    @State var items: [ItemModel] = [
        ItemModel(title: "Личные", isCompleted: false),
        ItemModel(title: "Работа", isCompleted: true),
        ItemModel(title: "Список фильмов", isCompleted: false),

    ]

    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }
            .onDelete(perform: deleteItem)
            .onMove(perform: moveItem)
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

    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }

    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }

}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}

