//  ColorExtensions.swift

import SwiftUI

extension Color {
    static func backgroundForWeatherCondition(_ condition: String) -> LinearGradient {
        let lowerCondition = condition.lowercased()
        let gradients: [String: Gradient] = [
            "clear": Gradient(colors: [
                Color(hue: 0.6, saturation: 0.7, brightness: 0.9),
                Color(hue: 0.58, saturation: 0.5, brightness: 1.0),
            ]),
            "rain": Gradient(colors: [
                Color(hue: 0.65, saturation: 0.4, brightness: 0.8),
                Color(hue: 0.7, saturation: 0.4, brightness: 0.7),
            ]),
            "cloud": Gradient(colors: [
                Color(hue: 0.6, saturation: 0.2, brightness: 0.9),
                Color(hue: 0.6, saturation: 0.1, brightness: 0.8),
            ]),
        ]
        
        for (keyword, gradient) in gradients {
            if lowerCondition.contains(keyword) {
                return LinearGradient(
                    gradient: gradient,
                    startPoint: .top,
                    endPoint: .bottom
                )
            }
        }
        
        let defaultGradient = gradients["clear"]!
        return LinearGradient(
            gradient: defaultGradient,
            startPoint: .top,
            endPoint: .bottom
        )
    }
}
