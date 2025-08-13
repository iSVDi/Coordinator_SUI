//
//  DetailView.swift
//  Coordinator
//
//  Created by Daniil on 08.08.2025.
//

import SwiftUI

struct DetailView: View {
    @Environment(DetailCoordinator.self) var coordinator
    
    var body: some View {
        VStack {
            Text("Detail for: 123")
                .font(.title)
            
            Button("Go Customer Detail") {
                coordinator.showOrderDetails()
            }
            
            Button("Go Order Detail") {
                coordinator.showCustomerDetails()
            }
            
            Button("dismiss") {
                coordinator.dismiss()
            }
        }
        .navigationTitle("Detail")
        .navigationBarTitleDisplayMode(.inline)
    }
}
