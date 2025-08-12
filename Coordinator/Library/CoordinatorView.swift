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
    CoordinatorType: BaseCoordinator<Destinating, BaseRouter<Destinating>>
>: View {
    @State private var coordinator: CoordinatorType
    
    init(_ coordinatorBuilder: CoordinatorType) {
        self._coordinator = State(wrappedValue: coordinatorBuilder)
    }
    
    var body: some View {
        NavigationStack(path: $coordinator.router.navigationPath) {
            coordinator.makeRootView()
                .environment(coordinator)
                .navigationDestination(for: Destinating.self) { destination in
                    coordinator.makeView(destination)
                        .environment(coordinator)
                    
                }
        }
        
        .sheet(item: $coordinator.router.presentedSheet) { destination in
            
            CoordinatorView(SettingsCoordinator(router: BaseRouter<SettingsDestination>()))
            CoordinatorView(MainCoordinator(router: BaseRouter<MainDestination>()))
//            NavigationStack {
//                destination.makeView()
//                    .environment(coordinator)
//            }
        }
//        .fullScreenCover(item: $coordinator.router.presentedFullScreenCover) { destination in
//            CoordinatorView(Coordinator(router: AppRouter()) as! CoordinatorType)
////            NavigationStack {
////                destination.makeView()
////                    .environment(coordinator)
////            }
//        }
    }
}
