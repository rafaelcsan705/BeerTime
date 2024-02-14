//
//  LoginView.swift
//  Beers Time
//
//  Created by Rafael Santos on 08/01/2024.
//

import Foundation
import SwiftUI
import MyModuleFramework

struct LoginView: View {
    
    let myModule: MyModule = MyModule()
    
    var body: some View {
        VStack (alignment: .center) {
            HStack() {
                Text("Welcome")
                    .font(.largeTitle)
                    .fontDesign(.monospaced)
                    .padding()
                Spacer()
            }
            GoogleLoginButton()
            HStack() {
                Text("Don't have an account?")
                    .font(.subheadline)
                Button(action: {
                    print("Sign Up")
                }) {
                    Text("Sign Up")
                        .font(.subheadline)
                        .foregroundColor(.blue)
                }
            }
        }
        .onAppear {
            myModule.doSomething()
        }
    }
}

#Preview {
    LoginView()
}
