//  WelcomeView.swift

import CoreLocationUI
import SwiftUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager
    let action: () -> Void
    var body: some View {
        ZStack {
            AnimatedWeatherBackground(condition: "clear sky")
            VStack(spacing: 30) {
                VStack(spacing: 15) {
                    Image(systemName: "cloud.sun.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.white)
                        .shadow(
                            color: .black.opacity(0.2), radius: 10, x: 0, y: 5)
                    Text("Bienvenido a la Weather App")
                        .font(
                            .system(size: 32, weight: .bold, design: .rounded)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                }
                Text(
                    "Permite el acceso a tu ubicación para obtener el clima actual."
                )
                .font(.system(size: 16, weight: .medium, design: .rounded))
                .multilineTextAlignment(.center)
                .foregroundColor(.white.opacity(0.9))
                .padding(.horizontal, 30)
                LocationButton(.shareCurrentLocation) {
                    action()
                }
                .cornerRadius(12)
                .symbolVariant(.fill)
                .foregroundColor(.white)
                .tint(.blue)
                .controlSize(.large)
                .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 5)
                Text(
                    "La ubicación se usa solo para mostrar el clima y no se guarda."
                )
                .font(.caption)
                .foregroundColor(.white.opacity(0.7))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40)
            }
            .padding()
        }
    }
}

#Preview {
    WelcomeView {
    }
    .environmentObject(LocationManager())
}
