//
//  LoginScreen.swift
//  TickTick
//
//  Created by Le Minh Dang on 18/11/2023.
//

import SwiftUI
struct LoginScreen: View {
    var body: some View {
        VStack(spacing: 0) {
            Spacer().frame(height: 100)
            buildLoginTitle()
            Spacer()
                .frame(height: 76.85)
            CustomTextField(title: "Login", enableTrailing: false, image: .icMail)
                .padding([.leading, .trailing], 35)
            Spacer()
                .frame(height: 32)
            CustomTextField(title: "Password", enableTrailing: true, image: .icLock)
                .padding([.trailing, .leading], 35)
            Spacer()
                .frame(height: 35)
            buildForgetPassword()
            Spacer()
                .frame(height: 55)
            CustomButton(title: "Login", backgroundColor: Color(hex: 0x5B67CA))
            Spacer()
                .frame(height: 72)
            buildFooter()
            Spacer()
                .frame(height: 35)
            buildLoginOptions()
            Spacer()
                .frame(height: 124)
            buildSignUpText()



        }

    }

    private func buildLoginTitle() ->  some View {
        return Text("Login")
            .foregroundStyle(Color(hex: 0x5B67CA))
            .font(.custom("Hind Siliguri", size: 36)
                .weight(.semibold))
            .frame(height: 28.21)
            .padding(.leading, 36)
            .frame(maxWidth: .infinity, alignment: .leading)
    }

    private func buildForgetPassword() -> some View {
        return Text("Forgot password ?")
            .font(.custom("Hind Siliguri", size: 12))
            .fontWeight(.regular)
            .foregroundStyle(Color(hex: 0xff5B67CA))
            .frame(maxWidth: .infinity, alignment: .trailing)
            .frame(height: 17)
            .padding(.trailing, 36)

    }

    func buildFooter() -> some View {
        return HStack(spacing: 0) {
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
            .padding([.leading, .trailing], 35)
    }
    private func buildLoginOptions() -> some View {
        return HStack(spacing: 0) {
            ZStack(alignment: .center) {
                Circle()
                    .stroke(.red, lineWidth: 0.78)
                    .background(.clear)
                    .frame(width: 42, height: 42)
                Image(.icGoogle).frame(width: 24, height: 24)
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

        }
    }

    private func buildSignUpText() -> some View {
        return HStack(spacing: 0) {
            Text("Don't have an account? ")
                .font(.custom("Hind Siliguri", size: 14)
                    .weight(.regular))
                    .frame(height: 17)
                    .foregroundColor(Color(hex: 0x2C406E))
            Text("Sign Up")
                .font(.custom("Hind Siliguri", size: 14).weight(.semibold))
                    .frame(height: 17)
                    .foregroundColor(Color(hex: 0x2C406E))
                    
        }
    
    }
}

#Preview {
    LoginScreen()
}
