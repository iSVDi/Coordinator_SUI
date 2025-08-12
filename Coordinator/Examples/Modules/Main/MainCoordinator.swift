//
//  MainCoordinator.swift
//  Coordinator
//
//  Created by Daniil on 12.08.2025.
//


import SwiftUI
import Combine

class MainCoordinator: BaseCoordinator<MainDestination, BaseRouter<MainDestination>> {
    
    override func makeRootView() -> AnyView {
        AnyView(HomeView())
    }
    
    override func makeView(_ destination: MainDestination) -> AnyView {
        switch destination {
        case .home:
            AnyView(HomeView())
        case .profile(let userId):
            AnyView(ProfileView(userId: userId))
        case .settings:
            AnyView(SettingsView(title: "Flow 1")
                .environment(getSettingsCoordinator()))
        case .detail(let itemId):
            AnyView(DetailView(itemId: itemId))
        }
    }
    
    override func finish() {
        router.dismiss()
    }
    
    //    @ViewBuilder
    //    override func makeView(_ destination: Destinating) -> some View {
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
    //    }
    
    func getSettingsCoordinator() -> SettingsCoordinator? {
        let coordinator = SettingsCoordinator(router: BaseRouter<SettingsDestination>())
        coordinator.parent = self
        return coordinator
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
