//
//  CoordinatorView.swift
//  Coordinator
//
//  Created by Daniil on 08.08.2025.
//

import SwiftUI
import Combine

struct CoordinatorView<Router: Routing, CoordinatorType: Coordinator<Router>>: View {
//    @StateObject private var coordinator: CoordinatorType
    @StateObject private var coordinator: CoordinatorType
    
    init(_ coordinatorBuilder: CoordinatorType) {
        self._coordinator = StateObject(wrappedValue: coordinatorBuilder)
    }
    
    var body: some View {
        NavigationStack(path: $coordinator.router.navigationPath) {
            coordinator.makeRootView()
                .environmentObject(coordinator)
                .navigationDestination(for: AppDestination.self) { destination in
//                    if let destination = destination as? AppDestination {
                    
                        
                        switch destination {
                        case .home:
                            HomeView()
                        case .profile(let userId):
                            ProfileView(userId: userId)
                                .environmentObject(coordinator)
                        case .settings:
                            SettingsView()
                        case .detail(let itemId):
                            DetailView(itemId: itemId)
                        }
                    
                    
//                        destination.makeView()
//                            .environmentObject(coordinator)
//                    } else {
//                        AnyView(EmptyView())
//                    }
                    
                }
        }
        .onChange(of: coordinator.router.navigationPath) { oldValue, newValue in
            print(oldValue, newValue)
        }
        .onAppear {
            print()
        }
        
//        .sheet(item: $coordinator.router.presentedSheet) { destination in
//            NavigationStack {
//                destination.makeView()
//                    .environmentObject(coordinator)
//            }
//        }
//        .fullScreenCover(item: $coordinator.router.presentedFullScreenCover) { destination in
//            NavigationStack {
//                destination.makeView()
//                    .environmentObject(coordinator)
//            }
//        }
    }
}
