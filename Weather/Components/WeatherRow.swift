// WeatherRow.swift

import SwiftUI

struct WeatherRow: View {
    let title: String
    let value: String
    let iconName: String
    var body: some View {
        HStack {
            Image(systemName: iconName)
                .foregroundColor(.accentColor)
                .font(.title2)
                .frame(minWidth: 40)
            VStack(alignment: .leading) {
                Text(title)
                    .font(.headline)
                    .foregroundColor(.primary)
                Text(value)
                    .font(.body)
                    .foregroundColor(.secondary)
            }
            Spacer()
        }
        .padding()
        .background(Color(UIColor.secondarySystemBackground).opacity(0.7))
        .cornerRadius(12)
        .shadow(radius: 3)
    }
}

struct WeatherRow_Previews: PreviewProvider {
    static var previews: some View {
        WeatherRow(title: "Humedad", value: "45%", iconName: "humidity")
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
