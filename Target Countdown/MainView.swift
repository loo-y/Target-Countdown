//
//  MainView.swift
//  Target Countdown
//
//  Created by Loo on 2024/3/17.
//

import SwiftUI

struct MainView: View {
    var body: some View {
            TabView {
                VStack{
                    HStack{
                        SingleTargetView(progress: 5)
                        SingleTargetView(progress: 10)
                    }.frame(width: 50)
                    HStack{
                        SingleTargetView(progress: 10)
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

