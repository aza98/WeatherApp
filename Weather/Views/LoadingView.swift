//  LoadingView.swift

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(hue: 0.58, saturation: 0.6, brightness: 0.9),
                    Color(hue: 0.58, saturation: 0.5, brightness: 0.8),
                ]),
                startPoint: .top, endPoint: .bottom
            )
            .ignoresSafeArea()
            VStack(spacing: 20) {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle(tint: .white))
                    .scaleEffect(1.5)
                Text("Obteniendo datos del tiempo...")
                    .font(.headline)
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    LoadingView()
}
