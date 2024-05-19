//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by I putu Rama anadya on 19/05/24.
//

import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                // Conditional Statement with nill coalescing
                // Condition ? A : B
                configuration.isPressed ?
                // A: When  user pressed the button
                LinearGradient(
                    colors: [
                        .customGreyMedium,
                        .customGreyLight
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                )
                :
                // B: When the button is not pressed
                LinearGradient(
                    colors: [
                        .customGreyLight,
                        .customGreyMedium
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            .cornerRadius(40)
    }
    
}
