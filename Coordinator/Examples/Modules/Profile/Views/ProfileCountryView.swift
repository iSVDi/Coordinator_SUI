//
//  ProfileCountryView.swift
//  Coordinator
//
//  Created by Daniil on 13.08.2025.
//

import SwiftUI

struct ProfileCountryView: View {
    @Environment(MainCoordinator.self) var coordinator
    
    var body: some View {
        Text("Cool profile country")
        
        Button("Back") {
            coordinator.pop()
        }
    }
}
