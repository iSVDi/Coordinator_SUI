//
//  TabCoordinator.swift
//  Coordinator
//
//  Created by Daniil on 08.08.2025.
//

import SwiftUI
import Combine

class TabCoordinator: Coordinator<AppRouter> {
    @Published var selectedTab = 0
    
    init() {
        super.init(router: AppRouter())
    }
    
    func switchToTab(_ index: Int) {
        selectedTab = index
        router.popToRoot() // Reset navigation when switching tabs
    }
}
