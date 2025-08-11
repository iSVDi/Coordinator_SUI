//
//  Destination.swift
//  Coordinator
//
//  Created by Daniil on 08.08.2025.
//

import SwiftUI

protocol Destination: Hashable, Identifiable {
    associatedtype ViewType: View
    @ViewBuilder func makeView() -> ViewType
}

extension Destination {
    var id: Self { self }
}
