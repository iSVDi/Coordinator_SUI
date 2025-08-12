//
//  AnotherScreen.swift
//  Coordinator
//
//  Created by Daniil on 11.08.2025.
//

import Foundation
import UIKit
import SwiftUI

struct AnotherScreen: View {
    weak var coordinator: FeatureCoordinator?
    
    var body: some View {
        Text("Another Screen")
        
        Button("Push next screen") {
            self.coordinator?.pushNextScreen()
        }
        
        Button("present another screen") {
            self.coordinator?.presentModally()
        }
        
        Button("Finish") {
            self.coordinator?.finish()
        }
    }
}
