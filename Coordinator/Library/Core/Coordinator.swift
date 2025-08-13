//
//  Coordinator.swift
//  Coordinator
//
//  Created by Daniil on 08.08.2025.
//

import SwiftUI

@MainActor
protocol Coordinator {
    associatedtype Destinating: Destination
    
    @ViewBuilder func makeRootView() -> AnyView
    @ViewBuilder func makeView(_ destination: Destinating) -> AnyView
}
