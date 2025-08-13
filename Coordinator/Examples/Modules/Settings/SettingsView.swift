//
//  SettingsView.swift
//  Coordinator
//
//  Created by Daniil on 12.08.2025.
//

import SwiftUI

struct SettingsView: View {
    @Environment(SettingsCoordinator.self) var coordinator
    let title: String
    
    
    var body: some View {
        Text(title)
        
        Button("Show flow1") {
            print("Show Profile button tapped")
            coordinator.showFlow1()
        }
        
        Button("Show flow2") {
            print("Show Settings button tapped")
            coordinator.showFlow2()
        }
        
        Button("Show flow3") {
            print("Show Detail button tapped")
            coordinator.showFlow3()
        }
        
        Button("Dismiss") {
            print("Show Detail button tapped")
            coordinator.dismiss()
        }
    }
}
