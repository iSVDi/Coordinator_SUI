//
//  NextScreen.swift
//  Coordinator
//
//  Created by Daniil on 11.08.2025.
//


import Foundation
import UIKit
import SwiftUI

struct NextScreen: View {
    weak var coordinator: FeatureCoordinator?
    
    var body: some View {
        Text("Next Screen")
        
        Button("Push next screen") {
            self.coordinator?.pushNextScreen()
        }
        
        Button("present another screen") {
            self.coordinator?.presentModally()
        }
        
        Button("dismiss") {
            self.coordinator?.dismiss()
        }
        
        Button("Finish") {
            self.coordinator?.pop()
        }
    }
    
    private func pushNext() {
        coordinator?.pushNextScreen()
    }
}
