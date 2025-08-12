//
//  Coordinating.swift
//  Coordinator
//
//  Created by Daniil on 08.08.2025.
//

import SwiftUI

@MainActor
protocol Coordinating {
    associatedtype Router: Routing
    associatedtype RootView: View
    
    var router: Router { get set }
    
    @ViewBuilder func makeRootView() -> RootView
}
