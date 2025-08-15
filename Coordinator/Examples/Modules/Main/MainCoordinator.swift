//
//  MainCoordinator.swift
//  Coordinator
//
//  Created by Daniil on 12.08.2025.
//

import SwiftUI

@Observable
final class MainCoordinator: Coordinator {
    var parent: (any ParentCoordinator)?
    var router = BaseRouter<MainDestination>()
    
    init(parent: (any ParentCoordinator)? = nil) {
        self.parent = parent
    }
    
    func makeRootView() -> some View {
        HomeView()
            .environment(self)
    }
    
    func makeView(_ destination: MainDestination) -> some View {
        switch destination {
        case .profile:
            ProfileView()
                .environment(self)
        case .settings:
            CoordinatorView(SettingsCoordinator(parent: self))
        case .detail:
            CoordinatorView(DetailCoordinator(parent: self))
        case .commonInfo:
            ProfileCommonInfoView()
                .environment(self)
        case .country:
            ProfileCountryView()
                .environment(self)
        }
    }
    
    func showProfile() {
        router.push(.profile)
    }
    
    func showSettings() {
        router.presentSheet(.settings)
    }
    
    func showDetail(itemId: String) {
        router.presentFullScreenCover(.detail)
    }
    
}
