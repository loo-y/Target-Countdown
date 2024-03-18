//
//  SingleTargetView.swift
//  Target Countdown
//
//  Created by Loo on 2024/3/17.
//

import SwiftUI

struct SingleTargetView: View {
    var progress: Double = 30 // 默认50%的进度
    @State private var targetPercentage: Double = 0.0
    var startTime: Date
    var targetTime: Date
    @State private var backgroundColor: Color = Color.black
    @State private var currentDate = Date()
    
    private func calculateProgress() {
        let currentDate = Date()
        if let percentage = DateUtility.calculateDateProgress(startDate: startTime, endDate: targetTime, currentDate: currentDate) {
            targetPercentage = percentage
        }
    }
    

    
    var body: some View {
        HStack{
            ZStack {
                Color(backgroundColor)
                .ignoresSafeArea()
                
                VStack {
                    ZStack{
                        GeometryReader { geometry in
                            VStack{
                                ZStack{
                                    
                                    Circle()
                                        .fill(Color.blue)
                                        .overlay(
                                            Group {
                                                if progress < 100 {
                                                    WaveShape(progress: (1 - progress / 100) * 100, waveLength: 85) // 应用波浪形状
                                                        .fill(backgroundColor)
                                                        .rotationEffect(.radians(.pi)) // 180度旋转以使波浪在顶端
                                                }
                                            }
                                        )
                                        .mask(
                                            // 绘制一个全屏的矩形来掩盖圆 - 只显示圆的一半，基于进度
                                            Rectangle()
                                                .offset(y: progress > 0 ? CGFloat(1 - (progress / 100)) * geometry.size.height : 0)
                                        )
                                    
                                    
                                    Circle()
                                        .stroke(.gray.opacity(1), lineWidth: 5)
                                    
                                    
                                    Circle()
                                        .trim(from: 0, to: targetPercentage)
                                        .stroke(.green, lineWidth: 5)
                                        .rotationEffect(.degrees(-90))
                                    
                                }
                            }
                            //                        .background(.gray)
                        }
                        .frame(width: 300, height: 300)
                    }
                    .padding(.horizontal, 50)
//                  .background(Color.red)
                    
                }
            }
//            .background(backgroundColor)
            
        }
        .onAppear {
            calculateProgress()
        }
    }
    
    
}

//#Preview {
//    SingleTargetView()
//}




