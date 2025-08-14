//
//  Coordinator.swift
//  Coordinator
//
//  Created by Daniil on 08.08.2025.
//

import SwiftUI

@MainActor
protocol Coordinator: ParentCoordinator {
    associatedtype Destinating: Destination
    associatedtype RootViewType: View
    associatedtype MakeViewType: View
    
    var parent: (any ParentCoordinator)? { get }
    var router: BaseRouter<Destinating> { get set }
    
    @ViewBuilder func makeRootView() -> RootViewType
    @ViewBuilder func makeView(_ destination: Destinating) -> MakeViewType
}

extension Coordinator {
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
