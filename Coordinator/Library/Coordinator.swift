//
//  Coordinator.swift
//  Coordinator
//
//  Created by Daniil on 08.08.2025.
//

import SwiftUI
import Combine

@Observable
@MainActor
class Coordinator<Router: AppRouter>: Coordinating {
    var router: Router
    
    init(router: Router) {
        self.router = router
    }
    
    @ViewBuilder func makeRootView() -> some View  {
        HomeView()
    }
    
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
