//
//  BaseRouter.swift
//  Coordinator
//
//  Created by Daniil on 08.08.2025.
//

import SwiftUI
import Combine

@MainActor
class BaseRouter<RouteDestination: Destination>: Routing, ObservableObject {
    @Published var navigationPath = NavigationPath()
    @Published var presentedSheet: RouteDestination?
    @Published var presentedFullScreenCover: RouteDestination?
    
    func push(_ destination: RouteDestination) {
        print("Pushing destination: \(destination)")
        navigationPath.append(destination)
        print("Navigation path count: \(navigationPath.count)")
    }
    
    func pop() {
        guard !navigationPath.isEmpty else { 
            print("Cannot pop - navigation path is empty")
            return 
        }
        print("Popping from navigation path")
        navigationPath.removeLast()
        print("Navigation path count: \(navigationPath.count)")
    }
    
    func popToRoot() {
        print("Popping to root")
        navigationPath = NavigationPath()
    }
    
    func presentSheet(_ destination: RouteDestination) {
        print("Presenting sheet: \(destination)")
        presentedSheet = destination
    }
    
    func presentFullScreenCover(_ destination: RouteDestination) {
        print("Presenting full screen cover: \(destination)")
        presentedFullScreenCover = destination
    }
    
    func dismiss() {
        if presentedSheet != nil {
            print("Dismissing sheet")
            presentedSheet = nil
        } else if presentedFullScreenCover != nil {
            print("Dismissing full screen cover")
            presentedFullScreenCover = nil
        }
    }
}
