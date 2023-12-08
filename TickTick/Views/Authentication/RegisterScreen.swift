//
//  RegisterScreen.swift
//  TickTick
//
//  Created by Le Minh Dang on 07/12/2023.
//

import SwiftUI

struct RegisterScreen: View {
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
        }
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
