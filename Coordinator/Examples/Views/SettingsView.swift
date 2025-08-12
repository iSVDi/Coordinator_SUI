//
//  SettingsView.swift
//  Coordinator
//
//  Created by Daniil on 08.08.2025.
//

import SwiftUI

struct SettingsView: View {
    @Environment(Coordinator<AppRouter>.self) var coordinator
    
    var body: some View {
        VStack {
            Text("Settings")
                .font(.title)
            
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
            
            Button("Close") {
                coordinator.router.dismiss()
            }
        }
        .navigationTitle("Settings")
        .navigationBarTitleDisplayMode(.inline)
    }
}
