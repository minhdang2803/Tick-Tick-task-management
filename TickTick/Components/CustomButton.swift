//
//  CustomButton.swift
//  TickTick
//
//  Created by Le Minh Dang on 18/11/2023.
//

import Foundation
import SwiftUI

struct CustomButton : View
{
    var title: String
    var backgroundColor : Color
//    var onTap: () -> Void
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundStyle(.clear)
                .frame(width: 304, height: 52)
                .background(backgroundColor)
                .cornerRadius(14)
                .shadow(color: Color(red: 0.95, green: 0.97, blue: 1), radius: 6.5, x: -3, y: 7)
//                .onTapGesture {
//                    onTap()
//                }
            Text(title)
                .font(
                    Font.custom("Hind Siliguri", size: 16)
                        .weight(.semibold)
                )
                .foregroundStyle(.white)
        }
    }
    
}
