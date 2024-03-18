//
//  MainView.swift
//  Target Countdown
//
//  Created by Loo on 2024/3/17.
//

import SwiftUI
import Foundation





struct MainView: View {
    
    let startDate = DateUtility.createDate(year: 2023, month: 1, day: 2)
    
    var body: some View {
            TabView {
                VStack{
                    HStack{
//                        SingleTargetView(progress: 15)
//                        SingleTargetView(progress: 10)
                    }.frame(width: 50)
                    HStack{
                        SingleTargetView(progress: 20, startTime: startDate, targetTime: DateUtility.createDate(year: 2024, month: 5, day: 2))
                    }
                    
                }
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("首页")
                }
                .tag(0) // 可选，用于区分各个Tab
                
                SettingView()
            }
        }
}



#Preview {
    MainView()
}
