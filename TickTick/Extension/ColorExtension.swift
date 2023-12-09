//
//  ColorExtension.swift
//  TickTick
//
//  Created by Le Minh Dang on 18/11/2023.
//

import Foundation
import SwiftUI
extension Color {
    init(hex: UInt, alpha: Double = 1.0) {
        self.init(
            .sRGB,
            red: Double((hex & 0xFF0000) >> 16) / 255.0,
            green: Double((hex & 0x00FF00) >> 8) / 255.0,
            blue: Double(hex & 0x0000FF) / 255.0,
            opacity: alpha
        )
    }
    
    public static let primaryPurple : Color = Color(hex: 0x5B67CA)
    public static let primaryGray :Color = Color(hex:0xC6CEDD)
    public static let primaryBlue : Color = Color(hex: 0x2C406E)
}
