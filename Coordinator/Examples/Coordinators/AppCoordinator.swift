//
//  AppCoordinator.swift
//  Coordinator
//
//  Created by Daniil on 08.08.2025.
//

import SwiftUI

// Example router
typealias AppRouter = BaseRouter<AppDestination>

// Example coordinator
class AppCoordinator: Coordinator<AppRouter> {
    init() {
        super.init(router: AppRouter())
    }
    
    override func start() {
        // Initial setup - no need to push anything since we have a root view
    }
    
    @ViewBuilder override func makeRootView() -> AnyView {
        AnyView(HomeView())
    }
    
    // Coordinator-specific navigation methods
    func showProfile(userId: String) {
        router.push(.profile(userId: userId))
    }
    
    func showSettings() {
        router.presentSheet(.settings)
    }
    
    func showDetail(itemId: String) {
        router.push(.detail(itemId: itemId))
    }
}
