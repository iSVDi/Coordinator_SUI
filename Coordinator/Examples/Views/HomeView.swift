//
//  HomeView.swift
//  Coordinator
//
//  Created by Daniil on 08.08.2025.
//

import SwiftUI

struct HomeView: View {
    @Environment(Coordinator<AppRouter>.self) var coordinator
    
    var body: some View {
        VStack(spacing: 20) { 
            Text("Home")
                .font(.largeTitle)
            
            Button("Show Profile") {
                print("Show Profile button tapped")
                coordinator.showProfile(userId: "123")
            }
            
            Button("Show Settings") {
                print("Show Settings button tapped")
                coordinator.showSettings()
            }
            
            Button("Show Detail") {
                print("Show Detail button tapped")
                coordinator.showDetail(itemId: "item-1")
            }
            
        }
        .navigationTitle("Home")
    }
}
