//
//  MainCoordinator.swift
//  Coordinator
//
//  Created by Daniil on 12.08.2025.
//

import SwiftUI

class MainCoordinator: BaseCoordinator<MainDestination> {
    
    override func makeRootView() -> AnyView {
        AnyView(HomeView()
            .environment(self))
    }
    
    override func makeView(_ destination: MainDestination) -> AnyView {
        switch destination {
        case .profile:
            AnyView(ProfileView()
                .environment(self)
            )
        case .settings:
            AnyView(CoordinatorView(SettingsCoordinator(parent: self)))
        case .detail:
            AnyView(CoordinatorView(DetailCoordinator(parent: self)))
        case .commonInfo:
            AnyView(ProfileCommonInfoView()
                .environment(self)
            )
        case .country:
            AnyView(ProfileCountryView()
                .environment(self)
            )
            
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
