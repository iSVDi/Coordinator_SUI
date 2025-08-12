//
//  FlowCoordinator.swift
//  Coordinator
//
//  Created by Daniil on 11.08.2025.
//

protocol FlowCoordinator: Coordinator {
    var childCoordinator: (any Coordinator)? { get set }
}

extension FlowCoordinator {
    func addChild(_ coordinator: Coordinator) {
        childCoordinator = coordinator
        coordinator.finishDelegate = self
    }
    
    func removeChild() {
        childCoordinator = nil
    }
    
    func didFinish(childCoordinator: any Coordinator) {
        removeChild()
    }
}
