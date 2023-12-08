//
//  SplashScreen.swift
//  TickTick
//
//  Created by Le Minh Dang on 18/11/2023.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        NavigationView{
            VStack(spacing:0){
                // WeZcome Image
                Image(.welcomePicture)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 290.0, height: 293.0)
                    .padding(.top,128)
                Spacer()
                //App Name Text
                HStack(spacing:4) {
                    Text("TickTick")
                        .font(
                            Font.custom("Hind Siliguri", size: 32)
                                .weight(.bold)
                        )
                    
                        .foregroundStyle(Color.primaryPurple)
                    Image(.dot)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 6,height: 6)
                        .padding(.top,15)
                }
                
                Spacer().frame(height:15)
                
                //Quote Text
                Text("""
                 Plan what you will do to be more organized for today,
                 tomorrow and beyond
                 """)
                .font(Font.custom("Hind Siliguri", size: 14).weight(.regular))
                .multilineTextAlignment(.center)
                .foregroundStyle(Color(hex:0xff2C406E))
                
                Spacer().frame(height:65)
                
                
                NavigationLink(destination: LoginScreen()) {
                    CustomButton(title: "Login", backgroundColor: .primaryPurple)
                }
                .navigationBarBackButtonHidden(true)
                
                Spacer().frame(height:24)
                
                Text("Sign Up")
                    .font(Font.custom("Hind Siliguri", size: 16))
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.primaryPurple)
                    .onTapGesture {
                        //SignUP here
                    }
                
                
            }
        }
    }
}
#Preview {
    SplashScreen()
}
