//
//  AddView.swift
//  Pre-Crastination
//
//  Created by PiliavskyiMBP on 30.06.2021.
//

import SwiftUI

struct AddView: View {

    @State var textFieldText: String = ""

    var body: some View {
        ScrollView {
            VStack {
                TextField("Впишите текст сюда", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)))
                    .cornerRadius(10)

                Button(action: {

                }, label: {
                    Text("Сохранить".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .padding(14)
        }
        .navigationTitle("Добавить задание")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
    }
}
