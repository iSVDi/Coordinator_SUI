//
//  RootView.swift
//  Coordinator
//
//  Created by Daniil on 11.08.2025.
//

import Foundation
import UIKit
import SwiftUI

struct RootView: View {
    weak var coordinator: FeatureCoordinator?
    
    var body: some View {
        Text("RootView")
        
        Button("Push Next") {
            self.coordinator?.pushNextScreen()
        }
        
        Button("present another screen") {
            self.coordinator?.presentModally()
        }
        
        Button("dismiss") {
            self.coordinator?.dismiss()
        }
    }
}
