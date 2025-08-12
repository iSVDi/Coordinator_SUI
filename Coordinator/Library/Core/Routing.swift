//
//  Routing.swift
//  Coordinator
//
//  Created by Daniil on 08.08.2025.
//

import SwiftUI

@MainActor
protocol Routing {
    associatedtype RouteDestination: Destination
    
    var navigationPath: NavigationPath { get set }
    var presentedSheet: RouteDestination? { get set }
    var presentedFullScreenCover: RouteDestination? { get set }
    
    func push(_ destination: RouteDestination)
    func pop()
    func popToRoot()
    func presentSheet(_ destination: RouteDestination)
    func presentFullScreenCover(_ destination: RouteDestination)
    func dismiss()
}
