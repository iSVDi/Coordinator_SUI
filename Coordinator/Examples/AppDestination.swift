//
//  AppDestination.swift
//  Coordinator
//
//  Created by Daniil on 08.08.2025.
//

import SwiftUI
import Combine

enum AppDestination: Destination, Hashable {
    case home
    case profile(userId: String)
    case settings
    case detail(itemId: String)
    
    @ViewBuilder
    func makeView() -> some View {
        switch self {
        case .home:
            HomeView()
        case .profile(let userId):
            ProfileView(userId: userId)
        case .settings:
            SettingsView()
        case .detail(let itemId):
            DetailView(itemId: itemId)
        }
    }
}
