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
    associatedtype Router: BaseRouter<Destinating>
    
    var router: Router { get set }
    var parent: (any Coordinator)? { get set }
    
    @ViewBuilder func makeRootView() -> AnyView
    @ViewBuilder func makeView(_ destination: Destinating) -> AnyView
    
    func finish()
}

extension Coordinator {
    func finish() {
        router.dismiss()
    }
}

