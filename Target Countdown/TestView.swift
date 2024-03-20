//
//  TestView.swift
//  Target Countdown
//
//  Created by Loo on 2024/3/20.
//

import SwiftUI

struct TestView: View {
    var body: some View {
                
        TabView {
            Group{
                FirstView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("First")
                    }
                
                SecondView()
                    .tabItem {
                        Image(systemName: "square.grid.2x2")
                        Text("Second")
                    }
            }
            .toolbarBackground(.black, for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
        }
        
            
        }
        
}

struct FirstView: View {
    var body: some View {
        VStack {
            Text("First View")
                .font(.title)
                .foregroundColor(.white)
        }
        .padding()
        .background(Color.blue)
        .cornerRadius(10)
    }
}

struct SecondView: View {
    var body: some View {
        VStack {
            Text("Second View")
                .font(.title)
                .foregroundColor(.white)
        }
        .padding()
        .background(Color.green)
        .cornerRadius(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
