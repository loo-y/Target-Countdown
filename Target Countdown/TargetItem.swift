//
//  TargetItem.swift
//  Target Countdown
//
//  Created by Loo on 2024/3/17.
//

import Foundation
import SwiftData

@Model
final class TargetItem {
    // 目标到期时间
    var targetTime: Date
    // 目标起始时间
    var startTime: Date
    // 目标的总量: 比如存钱
    var targetValue: Int?
    
    init(targetTime: Date, startTime: Date?, targetValue: Int?) {
        self.targetTime = targetTime
        self.startTime = startTime ?? Date.now
        self.targetValue = targetValue
    }
}
