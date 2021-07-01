//
//  ItemModel.swift
//  Pre-Crastination
//
//  Created by PiliavskyiMBP on 02.07.2021.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
