//
//  DetailCoordinator.swift
//  Coordinator
//
//  Created by Daniil on 13.08.2025.
//

import SwiftUI

@Observable
final class DetailCoordinator: Coordinator {
    var parent: (any ParentCoordinator)?
    var router = BaseRouter<DetailDestination>()
    
    init(parent: (any ParentCoordinator)? = nil) {
        self.parent = parent
    }
    
    func makeRootView() -> some View {
        DetailView()
            .environment(self)
        
    }
    
    func makeView(_ destination: DetailDestination) -> some View {
        switch destination {
        case .customerDetails:
            CustomerDetailView()
                .environment(self)
        case .orderInfo:
            OrderDetailView()
                .environment(self)
        }
    }
    
    func showCustomerDetails() {
        router.push(.customerDetails)
    }
    
    func showOrderDetails() {
        router.push(.orderInfo)
    }
    
}
