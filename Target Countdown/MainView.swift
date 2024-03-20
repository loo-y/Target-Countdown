//
//  MainView.swift
//  Target Countdown
//
//  Created by Loo on 2024/3/17.
//

import SwiftUI
import Foundation





struct MainView: View {
    var body: some View {
            TabView {
                SettingView()
                    .tabItem {
                        Image(systemName: "gearshape.fill")
                        Text("设置")
                    }
                    .tag(1)
                
                HomeView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("首页")
                    }
                    .tag(0)
                
                
            }
//            .tint(Color.black) // 设置 Tab 按钮的颜色
            .ignoresSafeArea()
//            .background(Color.black) // 设置背景颜色
//            .preferredColorScheme(.dark) // 设置暗色模式
        }
        
}



#Preview {
    MainView()
}
