//
//  ProfileCommonInfoView.swift
//  Coordinator
//
//  Created by Daniil on 13.08.2025.
//
import SwiftUI

struct ProfileCommonInfoView: View {
    @Environment(MainCoordinator.self) var coordinator
    
    var body: some View {
        Text("Cool profile info")
        
        Button("Back") {
            coordinator.pop()
        }
    }
}



