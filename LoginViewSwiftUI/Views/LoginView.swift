//
//  LoginView.swift
//  LoginViewSwiftUI
//
//  Created by FERDA OLKUN on 22.08.2023.
//

import SwiftUI

struct LoginView: View {
    @Binding var currentShowingView: String
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    private func isValidPassword(_password: String) -> Bool {
        let passwordRegex = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])(?=.*[A-Z]).{6,}$")

        return passwordRegex.evaluate(with: password)
    }
    
    var body: some View {
        ZStack{
            Color.white.edgesIgnoringSafeArea(.all)
            
            VStack{
                HStack{
                    Text("Welcome Back!")
                        .font(.largeTitle)
                        .bold()
                    
                    Spacer ()
                }.padding()
                 .padding(.top)
                 Spacer()
                
                HStack{
                    Image(systemName: "mail")
                    TextField("Email", text: $email)
                    
                    Spacer()
                    
                    
                    
                    if (email.count != 0 ) {
                        Image(systemName: email.isValidEmail() ? "checkmark" : "xmark")
                            .fontWeight(.bold)
                            .foregroundColor(email.isValidEmail() ? .green : .red)
                    }
                    
                  
                }.padding()
                 .overlay(
                    RoundedRectangle(cornerRadius: 10)
                 .stroke(lineWidth:2)
                 .foregroundColor(.black)
                )
                 .padding()
                
                HStack{
                    Image(systemName: "lock")
                    SecureField("Password", text: $password)
                    
                    Spacer()
                    
                    if(password.count != 0) {
                        Image(systemName: isValidPassword(_password: password) ? "checkmark" : "xmark")
                            .fontWeight(.bold)
                            .foregroundColor(isValidPassword(_password: password) ? .green : .red)
                    }
                    
                    
                }.padding()
                 .overlay(
                    RoundedRectangle(cornerRadius: 10)
                 .stroke(lineWidth:2)
                 .foregroundColor(.black)
                )
                 .padding()
                 
                Button(action:{
                    withAnimation{
                        self.currentShowingView = "signup"
                    }
                }) {
                    Text("Don't have an account?")
                        .foregroundColor(.black.opacity(0.7))
                }
                
                Spacer()
                Spacer()
                
                Button {
                    
                } label: {
                    Text("Sing In")
                        .foregroundColor(.white)
                        .font(.title3)
                        .bold()
                    
                        .frame(maxWidth:.infinity)
                        .padding()
                        .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.black)
                        )
                        .padding(.horizontal )
                }

                
               
            }
        }
    }
}


