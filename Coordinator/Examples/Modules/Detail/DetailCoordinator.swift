//
//  DetailCoordinator.swift
//  Coordinator
//
//  Created by Daniil on 13.08.2025.
//

import SwiftUI

class DetailCoordinator: BaseCoordinator<DetailDestination> {
    override func makeRootView() -> AnyView {
        AnyView(DetailView()
            .environment(self)
        )
    }
    
    override func makeView(_ destination: DetailDestination) -> AnyView {
        switch destination {
        case .customerDetails:
            AnyView(CustomerDetailView()
                .environment(self)
            )
        case .orderInfo:
            AnyView(OrderDetailView()
                .environment(self)
            )
        }
    }
    
    func showCustomerDetails() {
        router.push(.customerDetails)
    }
    
    func showOrderDetails() {
        router.push(.orderInfo)
    }
        
}
