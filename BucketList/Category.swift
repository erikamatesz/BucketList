//
//  Category.swift
//  BucketList
//
//  Created by Erika C. Matesz Bueno on 11/12/22.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id : String { UUID().uuidString }
    case `default` = "🟪"
    case experience = "🤩"
    case food = "🍕"
    case shopping = "🛍"
    case show = "👨🏻‍🎤"
    case travel = "✈️"
}
