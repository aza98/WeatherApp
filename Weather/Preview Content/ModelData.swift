//  ModelData.swift

import Foundation

struct Weather: Identifiable {
    let id = UUID()
    let cityName: String
    let country: String
    let temperature: Double
    let feelsLike: Double
    let minTemp: Double
    let maxTemp: Double
    let humidity: Int
    let condition: String
    let icon: String
    let date: Date
}
