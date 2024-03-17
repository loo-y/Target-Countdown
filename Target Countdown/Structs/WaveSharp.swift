//
//  WaveSharp.swift
//  Target Countdown
//
//  Created by Loo on 2024/3/17.
//

import SwiftUI

// 波浪形状
struct WaveShape: Shape {
    var progress: Double // 输入的进度 (0-100)
    var amplitude: CGFloat = 5 // 波浪的振幅
    var waveLength: CGFloat = 90 // 波浪的长度

    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let waveHeight = CGFloat(1 - (progress / 100)) * rect.maxY
        let yOffset = waveHeight - amplitude

        path.move(to: CGPoint(x: 0, y: yOffset))

        for x in stride(from: 0, to: rect.maxX, by: 1) {
            let relativeX = x / waveLength
            let sine = sin(relativeX * .pi * 2)
            let y = sine * amplitude + yOffset

            path.addLine(to: CGPoint(x: x, y: y))
        }

        path.addLine(to: CGPoint(x: rect.maxX, y: yOffset))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: 0, y: rect.maxY))

        return path
    }
}
