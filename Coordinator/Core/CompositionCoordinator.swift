//
//  CompositionCoordinator.swift
//  Coordinator
//
//  Created by Daniil on 11.08.2025.
//

import Foundation
import SwiftUI

protocol CompositionCoordinator: Coordinator {
    var childCoordinators: [any Coordinator] { get set }
}
