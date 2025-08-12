//
//  DetailView.swift
//  Coordinator
//
//  Created by Daniil on 08.08.2025.
//

import SwiftUI

struct DetailView: View {
    @Environment(BaseCoordinator<MainDestination, BaseRouter<MainDestination>>.self) var coordinator
    
    let itemId: String
    
    var body: some View {
        VStack {
            Text("Detail for: \(itemId)")
                .font(.title)
            
            Button("Go Back") {
                coordinator.router.pop()
            }
            
            Button("Go to Root") {
                coordinator.router.popToRoot()
            }
        }
        .navigationTitle("Detail")
        .navigationBarTitleDisplayMode(.inline)
    }
}
