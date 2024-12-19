// WeatherView.swift

import SwiftUI

struct WeatherView: View {
    let weather: Weather
    var body: some View {
        ZStack {
            AnimatedWeatherBackground(condition: weather.condition)
            ScrollView {
                VStack(spacing: 20) {
                    VStack(spacing: 8) {
                        Text("\(weather.cityName), \(weather.country)")
                            .font(.title.weight(.semibold))
                            .foregroundColor(.white)
                        Text(weather.condition.capitalized)
                            .font(.title2.weight(.regular))
                            .foregroundColor(.white.opacity(0.9))
                    }
                    Image(
                        systemName: WeatherIconMapper.sfSymbol(
                            for: weather.condition)
                    )
                    .font(.system(size: 80))
                    .foregroundColor(.white)
                    .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 5)
                    Text("\(weather.temperature.roundDouble())°C")
                        .font(.system(size: 80, weight: .bold))
                        .foregroundColor(.white)
                    VStack(spacing: 10) {
                        WeatherRow(
                            title: "Mín/Máx",
                            value:
                                "\(weather.minTemp.roundDouble())° / \(weather.maxTemp.roundDouble())°",
                            iconName: "thermometer")
                        WeatherRow(
                            title: "Sensación",
                            value: "\(weather.feelsLike.roundDouble())°C",
                            iconName: "thermometer.sun")
                        WeatherRow(
                            title: "Humedad",
                            value: "\(weather.humidity)%",
                            iconName: "humidity")
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 20)
                    Spacer(minLength: 40)
                }
                .padding(.top, 60)
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    WeatherView(
        weather: Weather(
            cityName: "Monterrey",
            country: "MX",
            temperature: 25.5,
            feelsLike: 22.0,
            minTemp: 21.0,
            maxTemp: 27.0,
            humidity: 55,
            condition: "cielo despejado",
            icon: "01d",
            date: Date())
    )
    .environmentObject(LocationManager())
}
