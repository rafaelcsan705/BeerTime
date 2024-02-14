//
//  ContentView.swift
//  Beers Time
//
//  Created by Rafael Santos on 08/01/2024.
//

import SwiftUI

struct SplashView: View {
    
    @State private var showSplashScreen: Bool = true
    @State private var animateGradient: Bool = false
    
    
    private let startColor: Color = .black
    private let endColor: Color = .yellow
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(colors: [startColor, endColor], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)
                    .hueRotation(.degrees(animateGradient ? 180 : 0))
                    .onAppear {
                        withAnimation(.easeInOut(duration: 3).repeatForever(autoreverses: true)) {
                            animateGradient.toggle()
                        }
                    }
                
                if !showSplashScreen {
                    withAnimation(.easeInOut(duration: 1)) {
                        LoginView()
                    }
                } else {
                    VStack {
                        Spacer()
                        
                        LottieView(filename: "beerPackageAnimation")
                        
                        Text("Beer Time")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .fontDesign(.monospaced)
                        
                        Text("By: Mat1k")
                            .font(.callout)
                            .fontDesign(.monospaced)
                    }
                    .padding()
                }
            }
        }
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                showSplashScreen.toggle()
            }
        })
    }
}

#Preview {
    SplashView()
}
