//
//  Coordinator.swift
//  Coordinator
//
//  Created by Daniil on 11.08.2025.
//

import UIKit

protocol Coordinator: CoordinatorFinishDelegate {
    func start()
    func finish()
    
    var finishDelegate: CoordinatorFinishDelegate? { get set }
    var navigationController: UINavigationController { get }
}

extension Coordinator {
    func finish() {
        finishDelegate?.didFinish(childCoordinator: self)
    }
}
