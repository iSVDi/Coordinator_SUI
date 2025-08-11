//
//  ProfileView.swift
//  Coordinator
//
//  Created by Daniil on 08.08.2025.
//

import SwiftUI

struct ProfileView: View {
    let userId: String
    @EnvironmentObject var coordinator: AppCoordinator
    
    var body: some View {
        VStack {
            Text("Profile for user: \(userId)")
                .font(.title)
            
            Button("Show Detail") {
                coordinator.showDetail(itemId: "profile-item")
            }
        }
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
    }
}
