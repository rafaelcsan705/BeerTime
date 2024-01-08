//
//  AppleButtonView.swift
//  Beers Time
//
//  Created by Rafael Santos on 08/01/2024.
//

import Foundation
import SwiftUI
import UIKit

struct GoogleLoginButton: View {
    var body: some View {
        Button(action: {
            // Implemente o código de login com o Google aqui
        }) {
            Text("Login com Google")
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }
}

struct FacebookLoginButton: View {
    var body: some View {
        Button(action: {
            // Implemente o código de login com o Facebook aqui
        }) {
            Text("Login com Facebook")
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }
}

struct AppleLoginButton: View {
    var body: some View {
        Button(action: {
            // Implemente o código de login com a Apple aqui
        }) {
            Text("Login com Apple")
                .padding()
                .background(Color.black)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }
}

#Preview {
    VStack {
        GoogleLoginButton()
        FacebookLoginButton()
        AppleLoginButton()
    }
}
