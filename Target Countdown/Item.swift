//
//  Item.swift
//  Target Countdown
//
//  Created by Loo on 2024/3/16.
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
