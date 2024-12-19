//  WeatherIconMapper.swift

import SwiftUI

struct WeatherIconMapper {
    private static let iconMapping: [String: String] = [
        "clear": "sun.max.fill",
        "cloud": "cloud.fill",
        "rain": "cloud.rain.fill",
        "storm": "cloud.bolt.rain.fill",
        "snow": "cloud.snow.fill",
    ]
    static func sfSymbol(for condition: String) -> String {
        let lowerCondition = condition.lowercased()
        for (key, icon) in iconMapping {
            if lowerCondition.contains(key) {
                return icon
            }
        }
        return "cloud"
    }
}
