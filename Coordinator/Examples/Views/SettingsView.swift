//
//  SettingsView.swift
//  Coordinator
//
//  Created by Daniil on 08.08.2025.
//

import SwiftUI

struct SettingsView: View {
//    @EnvironmentObject var coordinator: AppCoordinator
    
    var body: some View {
        VStack {
            Text("Settings")
                .font(.title)
            
            Button("Close") {
//                coordinator.router.dismiss()
            }
        }
        .navigationTitle("Settings")
        .navigationBarTitleDisplayMode(.inline)
    }
}
