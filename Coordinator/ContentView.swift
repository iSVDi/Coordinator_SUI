//
//  ContentView.swift
//  Coordinator
//
//  Created by Daniil on 08.08.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CoordinatorView(AppCoordinator()) { destination in
            if let appDestination = destination as? AppDestination {
                AnyView(appDestination.makeView())
            } else {
                AnyView(EmptyView())
            }
        }
    }
}
