//
//  SettingsCoordinator.swift
//  Coordinator
//
//  Created by Daniil on 12.08.2025.
//

import SwiftUI

class SettingsCoordinator: BaseCoordinator<SettingsDestination> {
    
    override func makeRootView() -> AnyView {
        AnyView(SettingsView(title: "Settings flow 1")
            .environment(self)
        )
    }
    
    override func makeView(_ destination: SettingsDestination) -> AnyView {
        AnyView(SettingsView(title: title(destination))
            .environment(self)
        )
    }
    
    private func title(_ destination: SettingsDestination) -> String {
        switch destination {
        case .flow1:
            return "Settings Flow 1"
        case .flow2:
            return "Settings Flow 2"
        case .flow3:
            return "Settings Flow 3"
        }
    }
    
    func showFlow1() {
        router.push(.flow1)
    }
    
    func showFlow2() {
        router.push(.flow2)
    }
    
    func showFlow3() {
        router.push(.flow3)
    }
}
