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
    @Published var router: Router {
        didSet {
            print()
        }
    }
    
    init(router: Router) {
        self.router = router
    }
    
    @ViewBuilder func makeRootView() -> AnyView {
        AnyView(EmptyView())
    }
}
