//  AnimatedWeatherBackground.swift

import SwiftUI

struct AnimatedWeatherBackground: View {
    let condition: String
    @State private var animateGradient = 0.0
    var body: some View {
        Color.backgroundForWeatherCondition(condition)
            .ignoresSafeArea()
            .hueRotation(.degrees(animateGradient))
            .onAppear {
                withAnimation(
                    .easeInOut(duration: 3).repeatForever(autoreverses: true)
                ) {
                    animateGradient = 45
                }
            }
    }
}

#Preview {
    AnimatedWeatherBackground(condition: "clear sky")
}
