//
//  SettingView.swift
//  Target Countdown
//
//  Created by Loo on 2024/3/17.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        NavigationView {
            
            VStack{
                Text("Settings")
            }
            .background(Color.red)
            
            .toolbar{
                ToolbarItem {
                    Button("test") {
                    }
                }
                
            }
            
        }
        .background(Color.red)
    }
    
        
}


#Preview {
    SettingView()
}


