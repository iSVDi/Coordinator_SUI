//
//  FeatureCoordinator.swift
//  Coordinator
//
//  Created by Daniil on 11.08.2025.
//

import Foundation
import UIKit
import SwiftUI

final class FeatureCoordinator: FlowCoordinator {
   
    weak var finishDelegate: CoordinatorFinishDelegate?
    
    var childCoordinator: (any Coordinator)?
    
    internal let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let rootScreen = RootView(coordinator: self)
        let vc = UIHostingController(rootView: rootScreen)
        navigationController.setViewControllers([vc], animated: false)
    }
    
    func pushNextScreen() {
        let nextScreen = NextScreen(coordinator: self)
        let vc = UIHostingController(rootView: nextScreen)
        navigationController.pushViewController(vc, animated: true)
    } 
    
    func presentModally() {
        let anotherScreen = FeatureCoordinatorRepresentable()
        let vc = UIHostingController(rootView: anotherScreen)
        navigationController.present(vc, animated: true)
    }
    
    func pop() {
        navigationController.popViewController(animated: true)
    }
    
    func dismiss() {
        navigationController.dismiss(animated: true)
    }
    
}

struct FeatureCoordinatorRepresentable: UIViewControllerRepresentable {
    
    let coordinator = FeatureCoordinator(navigationController: .init())
    
    func makeUIViewController(context: Context) -> UINavigationController {
        coordinator.start()
        return coordinator.navigationController
    }
    
    func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {
        print("updateUIViewController")
    }
}
