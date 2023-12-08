//
//  CustomTextField.swift
//  TickTick
//
//  Created by Le Minh Dang on 04/12/2023.
//

import SwiftUI

struct CustomTextField: View {
    var title: String
    var enableTrailing : Bool = false
    @State private var content: String = ""
    @FocusState private var emailFieldIsFocused: Bool
    var image: ImageResource


    var body: some View {
        VStack(spacing:0){
            HStack(alignment: .center,spacing:0){
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 19.05, height: 18.23)
                    .padding(.trailing,13)
                TextField(title, text: $content)
                    .focused($emailFieldIsFocused)
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
                    .multilineTextAlignment(.leading)
                    .font(Font.custom("Hind Siliguri", size: 16))
                    .frame(height: 17.0)
                
                    .fontWeight(.regular)
                Spacer()
                if(enableTrailing){
                    Image(.icHide)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 16, height: 16)
                }
                
            }.padding(.bottom,19)
            Divider()
        }
    }
}

#Preview {
    CustomTextField(title: "Login", enableTrailing: true, image: .icMail)
}
