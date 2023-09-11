//
//  LoginViewSwiftUIApp.swift
//  LoginViewSwiftUI
//
//  Created by FERDA OLKUN on 22.08.2023.
//

import SwiftUI
import FirebaseCore



@main
struct LoginViewSwiftUIApp: App {
    
    init(){
        FirebaseApp.configure()
    }

    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
