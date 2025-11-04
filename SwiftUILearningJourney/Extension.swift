//
//  Extension.swift
//  SwiftUILearningJourney
//
//  Created by Mac on 2025/11/4.
//
import SwiftUI
extension Color {
    /// 从十六进制字符串创建颜色
    init(hex: String, opacity: Double = 1.0) {
        // 去除字符串中的 #
        let hexString = hex.trimmingCharacters(in: .init(charactersIn: "#"))
        var hexNumber: UInt64 = 0
        // 解析十六进制字符串为数字
        Scanner(string: hexString).scanHexInt64(&hexNumber)
        // 根据字符串长度解析 RGB/RGBA 通道
        let red: Double
        let green: Double
        let blue: Double
        let alpha: Double
        switch hexString.count {
        case 3: // RGB (如 F00 → FF0000)
            red = Double((hexNumber >> 8) & 0x0F) / 15.0
            green = Double((hexNumber >> 4) & 0x0F) / 15.0
            blue = Double(hexNumber & 0x0F) / 15.0
            alpha = opacity
        case 4: // RGBA (如 F008 → FF000088)
            red = Double((hexNumber >> 12) & 0x0F) / 15.0
            green = Double((hexNumber >> 8) & 0x0F) / 15.0
            blue = Double((hexNumber >> 4) & 0x0F) / 15.0
            alpha = Double(hexNumber & 0x0F) / 15.0
        case 6: // RRGGBB (如 FF0000)
            red = Double((hexNumber >> 16) & 0xFF) / 255.0
            green = Double((hexNumber >> 8) & 0xFF) / 255.0
            blue = Double(hexNumber & 0xFF) / 255.0
            alpha = opacity
        case 8: // RRGGBBAA (如 FF000088)
            red = Double((hexNumber >> 24) & 0xFF) / 255.0
            green = Double((hexNumber >> 16) & 0xFF) / 255.0
            blue = Double((hexNumber >> 8) & 0xFF) / 255.0
            alpha = Double(hexNumber & 0xFF) / 255.0
        default: // 无效格式，默认灰色
            red = 0.5
            green = 0.5
            blue = 0.5
            alpha = opacity
        }
        
        self.init(red: red, green: green, blue: blue, opacity: alpha)
    }
}
