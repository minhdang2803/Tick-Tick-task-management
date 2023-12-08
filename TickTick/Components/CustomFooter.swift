//
//  CustomFooter.swift
//  TickTick
//
//  Created by Le Minh Dang on 08/12/2023.
//

import SwiftUI

struct CustomFooter: View {
    var body: some View {
        HStack(spacing: 0) {
            Rectangle()
                .foregroundStyle(Color.primaryGray)
                .frame(maxHeight: 1)

            Text("or with")
                .foregroundStyle(Color.primaryGray)
                .font(.custom("Hind Siliguri", size: 12).weight(.regular))
                .padding([.trailing, .leading], 21)
            Rectangle()
                .foregroundColor(Color.primaryGray)
                .frame(maxHeight: 1)


        }
    }
}

#Preview {
    CustomFooter()
}
