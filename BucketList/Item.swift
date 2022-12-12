//
//  Item.swift
//  BucketList
//
//  Created by Erika C. Matesz Bueno on 11/12/22.
//

import Foundation

struct Item: Identifiable {
    var id = UUID()
    var title: String
    var date: Date = .now
    var category: Category = .default
    var isDone: Bool = false
}

extension Item {
    static let samples = [
        Item(title: "Sorveteria Bariloche", category: .food),
        Item(title: "Parque da Catacumba", category: .travel),
        Item(title: "Andar a cavalo", category: .experience),
        Item(title: "HotZone", category: .experience, isDone: true),
        Item(title: "Torrar 5k no shopping", category: .shopping),
        Item(title: "Karaokê na Feira", category: .experience, isDone: true),
        Item(title: "iPhones Novos", category: .shopping, isDone: true),
        Item(title: "Rodízio de Hamburguer", category: .food),
        Item(title: "Show do Coldplay", category: .show),
        Item(title: "Show do Bastille", category: .show),
        Item(title: "Samba na Pedra do Sal", category: .experience)
    ]
}
