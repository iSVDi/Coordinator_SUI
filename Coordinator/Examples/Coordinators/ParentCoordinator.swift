//
//  ParentCoordinator.swift
//  Coordinator
//
//  Created by Daniil on 08.08.2025.
//

class ParentCoordinator: Coordinator<AppRouter> {
    private var childCoordinators: [ChildCoordinating] = []
    
    func addChild(_ coordinator: ChildCoordinating) {
        childCoordinators.append(coordinator)
    }
    
    func removeChild(_ coordinator: ChildCoordinating) {
        childCoordinators.removeAll { $0 as AnyObject === coordinator as AnyObject }
    }
}
