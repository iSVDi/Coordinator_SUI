//
//  OrderDetailView.swift
//  Coordinator
//
//  Created by Daniil on 13.08.2025.
//


import SwiftUI

struct OrderDetailView: View {
    @Environment(DetailCoordinator.self) var coordinator
    
    var body: some View {
        Text("Cool order")
        
        Button("dismiss") {
            coordinator.dismiss()
        }
        
        Button("Back") {
            coordinator.pop()
        }
    }
}
