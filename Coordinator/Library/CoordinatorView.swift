//
//  CoordinatorView.swift
//  Coordinator
//
//  Created by Daniil on 08.08.2025.
//

import SwiftUI
import Combine

struct CoordinatorView<Router: Routing, CoordinatorType: Coordinator<Router>>: View {
    @State private var coordinator: CoordinatorType
    
    init(_ coordinatorBuilder: CoordinatorType) {
        self._coordinator = State(wrappedValue: coordinatorBuilder)
    }
    
    var body: some View {
        NavigationStack(path: $coordinator.router.navigationPath) {
            coordinator.makeRootView()
                .environment(coordinator)
                .navigationDestination(for: AppDestination.self) { destination in
                    destination.makeView()
                        .environment(coordinator)
                    
                }
        }
        
        .sheet(item: $coordinator.router.presentedSheet) { destination in
            CoordinatorView(Coordinator(router: AppRouter()) as! CoordinatorType)
//            NavigationStack {
//                destination.makeView()
//                    .environment(coordinator)
//            }
        }
        .fullScreenCover(item: $coordinator.router.presentedFullScreenCover) { destination in
            CoordinatorView(Coordinator(router: AppRouter()) as! CoordinatorType)
//            NavigationStack {
//                destination.makeView()
//                    .environment(coordinator)
//            }
        }
    }
}
