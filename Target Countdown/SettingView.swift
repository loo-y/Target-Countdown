//
//  SettingView.swift
//  Target Countdown
//
//  Created by Loo on 2024/3/17.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        VStack{
            Text("Settings")
        }
        .tabItem {
            Image(systemName: "gearshape.fill")
            Text("设置")
        }
        .tag(1) // 可选，用于区分各个Tab
    }
}

#Preview {
    SettingView()
}


