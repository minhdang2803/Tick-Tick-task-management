//
//  CustomLoginOptions.swift
//  TickTick
//
//  Created by Le Minh Dang on 08/12/2023.
//

import SwiftUI

struct CustomLoginOptions: View {
    var onTapFirstOption : () -> Void
    var onTapSecondOption: () -> Void
    var body: some View {
        HStack(spacing: 0) {
            ZStack(alignment: .center) {
                Circle()
                    .stroke(Color.primaryGray, lineWidth: 0.78)
                    .background(.clear)
                    .frame(width: 42, height: 42)
                Image(.icGoogle).frame(width: 24, height: 24)
            }
            .onTapGesture {
                onTapFirstOption()
            }
            Spacer()
                .frame(width: 16)
            ZStack(alignment: .center) {
                Circle()
                    .stroke(Color.primaryGray, lineWidth: 0.78)
                    .background(.clear)
                    .frame(width: 42, height: 42)
                Image(.icFb)
                    .frame(width: 30, height: 30)
            }
            .onTapGesture {
                onTapSecondOption()
            }

        }
    }
}

#Preview {
    CustomLoginOptions(
        onTapFirstOption: {
        print("hello")
    }, onTapSecondOption: {
        print("hello")
    })
}
