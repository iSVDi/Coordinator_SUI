//
//  Coordinating.swift
//  Coordinator
//
//  Created by Daniil on 08.08.2025.
//

import SwiftUI

@MainActor
protocol Coordinating: ObservableObject {
    associatedtype Router: Routing
    associatedtype RootView: View
    
    var router: Router { get set }
    
    func start()
    @ViewBuilder func makeRootView() -> RootView
}
