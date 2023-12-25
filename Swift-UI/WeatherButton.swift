//
//  WeatherButton.swift
//  Swift-UI
//
//  Created by ShanaayaVidit on 06/01/24.
//
import SwiftUI
import Foundation
struct WeatherButton: View {
    var buttonName: String
    var backgroundColor: Color
    var body: some View {
        Text(buttonName)
            .frame(width: 280,height: 50)
            .background(backgroundColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(20)
    }
}
