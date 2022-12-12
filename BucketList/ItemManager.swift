//
//  ItemManager.swift
//  BucketList
//
//  Created by Erika C. Matesz Bueno on 11/12/22.
//

import Foundation

class ItemManager {

    static func getRandomItemTitle(from itemList: [Item]) -> String {
        var notDoneItems = [Item]()

        itemList.forEach {
            if !$0.isDone {
                notDoneItems.append($0)
            }
        }

        if notDoneItems.isEmpty {
            return "There is no pending item in your bucket list!"
        } else {
            let randomItem = notDoneItems.randomElement()
            return "\(randomItem?.category.rawValue ?? "") \(randomItem?.title ?? "")"
        }

    }
}
