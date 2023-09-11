//
//  AuthView.swift
//  LoginViewSwiftUI
//
//  Created by FERDA OLKUN on 23.08.2023.
//

import SwiftUI

struct AuthView: View {
    @State private var currentViewShowing: String = "login"
    
    var body: some View {
        if(currentViewShowing == "login"){
            LoginView(currentShowingView: $currentViewShowing)
                .preferredColorScheme(.light)
        }else{
            SignupView(currentShowingView: $currentViewShowing)
                .preferredColorScheme(.dark)
                .transition(.move(edge: .bottom))
        }
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
