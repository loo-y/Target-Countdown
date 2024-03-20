//
//  HomeView.swift
//  Target Countdown
//
//  Created by Loo on 2024/3/20.
//

import SwiftUI
import SwiftData

struct HomeView: View {
    @Query private var items: [Item]
    @Environment(\.modelContext) private var HomeContext
    
    let startDate = DateUtility.createDate(year: 2023, month: 1, day: 2)
    private func addItem() {
        withAnimation {
            let newItem = Item(timestamp: Date())
            HomeContext.insert(newItem)
        }
    }
    
    var body: some View {
        
            NavigationView {
                VStack{
                    List{
                        ForEach(items) { item in
                            HStack{
                                SingleTargetView(
                                    progress: 20,
                                    startTime: startDate,
                                    targetTime: DateUtility.createDate(year: 2024, month: 5, day: 2)
                                )
                            }
                        }
                        .background(Color.black)
                    }
                    .background(Color.black)
                }

                .toolbar{
                    ToolbarItem {
                        Button("Add") {
                            addItem()
                        }
                    }
                    
                }
            }

            .background(Color.black)
//            .navigationViewStyle(StackNavigationViewStyle())
            
        }
}

#Preview {
    HomeView()
}
