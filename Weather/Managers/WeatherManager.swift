// WeatherManager.swift

import CoreLocation
import Foundation

struct WeatherResponse: Decodable {
    let weather: [WeatherCondition]
    let main: MainWeatherData
    let name: String
    let sys: SysData
    let dt: Date
}

struct WeatherCondition: Decodable {
    let description: String
    let main: String
    let icon: String
}

struct MainWeatherData: Decodable {
    let temp: Double
    let feels_like: Double
    let temp_min: Double
    let temp_max: Double
    let humidity: Int
}

struct SysData: Decodable {
    let country: String
}

class WeatherManager {
    // Reemplaza con tu propia API Key de OpenWeatherMap
    private let apiKey = "TU_API_KEY_AQUI"
    func getCurrentWeather(
        latitude: CLLocationDegrees, longitude: CLLocationDegrees
    ) async throws
        -> Weather
    {
        guard
            let url = URL(
                string:
                    "https://api.openweathermap.org/data/2.5/weather?lat=\(latitude)&lon=\(longitude)&appid=\(apiKey)&units=metric"
            )
        else {
            throw URLError(.badURL)
        }
        let (data, _) = try await URLSession.shared.data(from: url)
        let decoded = try JSONDecoder().decode(WeatherResponse.self, from: data)
        return Weather(
            cityName: decoded.name,
            country: decoded.sys.country,
            temperature: decoded.main.temp,
            feelsLike: decoded.main.feels_like,
            minTemp: decoded.main.temp_min,
            maxTemp: decoded.main.temp_max,
            humidity: decoded.main.humidity,
            condition: decoded.weather.first?.description ?? "",
            icon: decoded.weather.first?.icon ?? "",
            date: decoded.dt)
    }
}
