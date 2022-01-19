//
//  RegistartionView.swift
//  TwitterSwiftUI
//
//  Created by Øystein Thorheim on 16/01/2022.
//

import SwiftUI

struct RegistartionView: View {
    @State var email = ""
    @State var password = ""
    @State var fullname = ""
    @State var usewrname = ""
    
    var body: some View {
        ZStack{
            VStack{
                Image("twitter-logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 220, height: 100)
                    .padding(.top, 88)
                    .padding(.bottom,32)
                
                VStack(spacing: 20){
                    CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                    
                    CustomTextField(text: $email, placeholder: Text("Full Name"), imageName: "person")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                    
                    CustomTextField(text: $email, placeholder: Text("Username"), imageName: "person")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                    
                    CustomsecureField(text: $password, placeholder: Text("Password"))
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                    
                }
                .padding(.horizontal, 32)
                
                HStack{
                    Spacer()
                    
                    Button(action: { }, label: {
                        Text("Forgot password?")
                        .font(.footnote)
                        .bold()
                        .foregroundColor(.white)
                        .padding(.top,8)
                        .padding(.trailing, 32)
                    })
                }
                
                Button(action: {}, label: {
                    Text("Sign in")
                        .font(.headline)
                        .foregroundColor(.blue)
                        .frame(width: 360, height: 50)
                        .background(Color.white)
                        .clipShape(Capsule())
                        .padding()
                })
                
                Spacer()
                
                HStack {
                    Text("Already have an account?")
                        .font(.system(size: 14))
                    
                    Text("Sign in")
                        .font(.system(size: 14, weight: .semibold))
                }
                .foregroundColor(.white)
                .padding(.bottom, 40)
            }
        }
        .background(Color(#colorLiteral(red: 0.1825715601, green: 0.6299551129, blue: 0.9542170167, alpha: 1)))
        .ignoresSafeArea()
    }
}

struct RegistartionView_Previews: PreviewProvider {
    static var previews: some View {
        RegistartionView()
    }
}
