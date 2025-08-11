//
//  CoordinatorView.swift
//  Coordinator
//
//  Created by Daniil on 08.08.2025.
//

import SwiftUI
import Combine

struct CoordinatorView<Router: Routing, CoordinatorType: Coordinator<Router>>: View {
    @StateObject private var coordinator: CoordinatorType
    private let destinationViewBuilder: (AnyHashable) -> AnyView
    
    init(
        _ coordinatorBuilder: @autoclosure @escaping () -> CoordinatorType,
        destinationViewBuilder: @escaping (AnyHashable) -> AnyView
    ) {
        self._coordinator = StateObject(wrappedValue: coordinatorBuilder())
        self.destinationViewBuilder = destinationViewBuilder
    }
    
    var body: some View {
        NavigationStack(path: $coordinator.router.navigationPath) {
            coordinator.makeRootView()
                .navigationDestination(for: AnyHashable.self) { destination in
                    destinationViewBuilder(destination)
                        .environmentObject(coordinator)
                }
        }
        .sheet(item: $coordinator.router.presentedSheet) { destination in
            NavigationStack {
                destination.makeView()
                    .environmentObject(coordinator)
            }
        }
        .fullScreenCover(item: $coordinator.router.presentedFullScreenCover) { destination in
            NavigationStack {
                destination.makeView()
                    .environmentObject(coordinator)
            }
        }
        .onAppear {
            print("CoordinatorView appeared")
            coordinator.start()
        }
        .environmentObject(coordinator)
    }
}
