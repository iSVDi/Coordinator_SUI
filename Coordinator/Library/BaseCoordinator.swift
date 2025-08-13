//
//  Coordinator.swift
//  Coordinator
//
//  Created by Daniil on 08.08.2025.
//

import SwiftUI

@Observable
@MainActor
class BaseCoordinator<Destinating: Destination>: Coordinator, ParentCoordinator {
    private let parent: (any ParentCoordinator)?
    var router = BaseRouter<Destinating>()
    
    init(parent: (any ParentCoordinator)? = nil) {
        self.parent = parent
    }
    
    @ViewBuilder func makeRootView() -> AnyView {
        AnyView(Text("Looks like\nmakeRootView()\nwasn't overriden in coordinator.\nRecommend fix it ;")
            .multilineTextAlignment(.center))
    }
    
    @ViewBuilder
    func makeView(_ destination: Destinating) -> AnyView {
        AnyView(Text("Looks like\nmakeView(_ destination: Destinating)\nwasn't overriden in coordinator.\nRecommend fix it;"))
    }
    
    func dismissFromParent() {
        router.dismiss()
    }
    
    // MARK: - Router Interface
    func push(_ destination: Destinating) {
        router.push(destination)
    }
    
    func pop() {
        router.pop()
    }
    
    func popToRoot() {
        router.popToRoot()
    }
    
    func presentSheet(_ destination: Destinating) {
        router.presentSheet(destination)
    }
    
    func presentFullScreenCover(_ destination: Destinating) {
        router.presentFullScreenCover(destination)
    }
    
    func dismiss() {
        parent?.dismissFromParent()
    }
    
}
