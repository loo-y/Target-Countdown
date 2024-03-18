//
//  Utility.swift
//  Target Countdown
//
//  Created by Loo on 2024/3/18.
//

import Foundation

// 一个包含静态方法来创建日期的工具结构体
struct DateUtility {
    static func createDate(year: Int, month: Int, day: Int) -> Date {
        var calendar = Calendar.current
        calendar.timeZone = TimeZone.current
        
        var dateComponents = DateComponents()
        dateComponents.year = year
        dateComponents.month = month
        dateComponents.day = day
        
        guard let date = calendar.date(from: dateComponents) else {
            return Date.now
        }
        
        return date
    }
    
    static func calculateDateProgress(startDate: Date, endDate: Date, currentDate: Date) -> Double? {
        let startInterval = startDate.timeIntervalSinceReferenceDate
        let endInterval = endDate.timeIntervalSinceReferenceDate
        let currentInterval = currentDate.timeIntervalSinceReferenceDate
        
        // 确保当前日期位于开始日期和结束日期之间
        guard currentInterval >= startInterval, currentInterval <= endInterval else {
            return nil
        }
        
        let totalInterval = endInterval - startInterval
        let progressInterval = currentInterval - startInterval
        
        // 计算百分比并返回（结果为0到1之间的值）
        return totalInterval > 0 ? progressInterval / totalInterval : nil
    }
}
