//
//  ProfileView.swift
//  Coordinator
//
//  Created by Daniil on 08.08.2025.
//

import SwiftUI

struct ProfileView: View {
    @Environment(MainCoordinator.self) var coordinator
    
    var body: some View {
        VStack {
            Text("Profile for user: 123")
                .font(.title)
            
            Button("Show Profile") {
                print("Show Profile button tapped")
                coordinator.showProfile()
            }
            
            Button("Show Settings") {
                print("Show Settings button tapped")
                coordinator.showSettings()
            }
            
            Button("Show Detail") {
                print("Show Detail button tapped")
                coordinator.showDetail(itemId: "item-1")
            }
            
            Button("PopToRoot") {
                coordinator.popToRoot()
            }
            
        }
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
    }
}
