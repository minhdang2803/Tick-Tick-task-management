//
//  RegisterScreen.swift
//  TickTick
//
//  Created by Le Minh Dang on 07/12/2023.
//

import SwiftUI

struct RegisterScreen: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack{
            Spacer().frame(height: 100)
            buildSignUpTitle()
            Spacer().frame(height: 65)
            CustomTextField(title: "Username", image: .icMail)
                .padding([.trailing,.leading],36)
            Spacer().frame(height: 36)
            CustomTextField(title: "Email", image: .icLock)
                .padding([.trailing,.leading],36)
            Spacer().frame(height: 36)
            CustomTextField(title: "Password", image: .icLock)
                .padding([.trailing,.leading],36)
            Spacer().frame(height: 73)
            CustomButton(title: "Create", backgroundColor: Color.primaryPurple)
            Spacer().frame(height: 55)
            CustomFooter().padding([.leading,.trailing],35)
            Spacer().frame(height: 30)
            CustomLoginOptions(onTapFirstOption: {}, onTapSecondOption: {})
            Spacer().frame(height: 95)
            buildSignInQuote()
            Spacer().frame(height: 44)
        }
        .navigationBarBackButtonHidden(true)
    }
    private func buildSignInQuote() -> some View {
        return HStack(spacing: 0){
            Text("Have any account?")
            Text(" Sign In")
                .fontWeight(.semibold)
                .onTapGesture {
                    self.presentationMode.wrappedValue.dismiss()
                }
        }
        .foregroundStyle(Color.primaryBlue)
        .font(.custom("Hind Siliguri", size: 14).weight(.regular))
    }
    private func buildSignUpTitle() -> some View{
        return Text("Sign Up")
            .foregroundStyle(Color.primaryPurple)
            .font(.custom("Hind Siliguri", size: 36).weight(.semibold))
            .frame(height: 28.21)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading,36)
    }
    
}



#Preview {
    RegisterScreen()
}
