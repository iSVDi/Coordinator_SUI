//
//  Coordinator.swift
//  Coordinator
//
//  Created by Daniil on 08.08.2025.
//

import SwiftUI
import Combine

@MainActor
class Coordinator<Router: Routing>: Coordinating {
    @Published var router: Router
    
    init(router: Router) {
        self.router = router
    }
    
    func start() {
        // Override in subclasses to implement initial navigation
    }
    
    @ViewBuilder func makeRootView() -> AnyView {
        AnyView(EmptyView())
    }
}
