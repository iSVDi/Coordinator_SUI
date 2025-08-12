//
//  CoordinatorFinishDelegate.swift
//  Coordinator
//
//  Created by Daniil on 11.08.2025.
//

import Foundation
import SwiftUI

protocol CoordinatorFinishDelegate: AnyObject {
    func didFinish(childCoordinator: any Coordinator)
}
