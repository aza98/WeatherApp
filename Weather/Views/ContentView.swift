// ContentView.swift

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    @State private var weather: Weather?
    @State private var isLoading = false
    @State private var errorMessage: String?
    private let weatherManager = WeatherManager()
    var body: some View {
        Group {
            if let authorizationStatus = locationManager.authorizationStatus {
                switch authorizationStatus {
                case .notDetermined:
                    WelcomeView {
                        locationManager.requestLocation()
                    }
                case .denied:
                    Text(
                        "Por favor, habilita el acceso a la ubicación en Ajustes."
                    )
                    .padding()
                case .authorizedWhenInUse, .authorizedAlways:
                    if isLoading {
                        LoadingView()
                    } else if let weather = weather {
                        WeatherView(weather: weather)
                    } else if let errorMessage = errorMessage {
                        Text("Error: \(errorMessage)")
                            .padding()
                    } else {
                        LoadingView().onAppear {
                            loadWeather()
                        }
                    }
                default:
                    Text("Estado de autorización desconocido.")
                }
            } else {
                LoadingView()
            }
        }
        .onChange(of: locationManager.location) {
            loadWeather()
        }
    }

    func loadWeather() {
        guard let location = locationManager.location else {
            return
        }
        Task {
            isLoading = true
            do {
                weather = try await weatherManager.getCurrentWeather(
                    latitude: location.coordinate.latitude,
                    longitude: location.coordinate.longitude)
            } catch {
                errorMessage = error.localizedDescription
            }
            isLoading = false
        }
    }
}
