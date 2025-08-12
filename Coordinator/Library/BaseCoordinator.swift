//
//  Coordinator.swift
//  Coordinator
//
//  Created by Daniil on 08.08.2025.
//

import SwiftUI

@Observable
@MainActor
class BaseCoordinator<Destinating: Destination, Router: BaseRouter<Destinating>>: Coordinator {
    var parent: (any Coordinator)?
    
    var router: Router
    
    init(router: Router) {
        self.router = router
    }
    
    @ViewBuilder func makeRootView() -> AnyView {
        AnyView(EmptyView())
    }
    
    @ViewBuilder
    func makeView(_ destination: Destinating) -> AnyView {
        AnyView(EmptyView())
//        switch destination {
//        case .home:
//            HomeView()
//        case .profile(let userId):
//            ProfileView(userId: userId)
//        case .settings:
//            SettingsView(title: "Flow 1")
//                .environment(getSettingsCoordinator())
//        case .detail(let itemId):
//            DetailView(itemId: itemId)
//        }
    }
    
    func finish() {
        parent?.finish()
    }
    
}

