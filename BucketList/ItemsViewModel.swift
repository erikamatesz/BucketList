//
//  ItemsViewModel.swift
//  BucketList
//
//  Created by Erika C. Matesz Bueno on 11/12/22.
//

import Foundation

class ItemsViewModel: ObservableObject {
    @Published var items: [Item] = Item.samples
}
