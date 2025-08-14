//
//  CoordinatorView.swift
//  Coordinator
//
//  Created by Daniil on 08.08.2025.
//

import SwiftUI
import Combine

struct CoordinatorView<
    Destinating: Destination,
    CoordinatorType: Coordinator
>: View {
    @State private var coordinator: CoordinatorType
    
    init(_ coordinatorBuilder: CoordinatorType) {
        self._coordinator = State(wrappedValue: coordinatorBuilder)
    }
    
    var body: some View {
        NavigationStack(path: $coordinator.router.navigationPath) {
            coordinator.makeRootView()
                .navigationDestination(for: CoordinatorType.Destinating.self) { destination in
                    coordinator.makeView(destination)
                }
        }
        
        .sheet(item: $coordinator.router.presentedSheet) { destination in
            coordinator.makeView(destination)
        }
        .fullScreenCover(item: $coordinator.router.presentedFullScreenCover) { destination in
            coordinator.makeView(destination)
        }
    }
}
