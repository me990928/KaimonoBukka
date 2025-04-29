//
//  Item.swift
//  KaimonoBukka
//
//  Created by 広瀬友哉 on 2025/04/06.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
