//
//  LottieView.swift
//  Beers Time
//
//  Created by Rafael Santos on 08/01/2024.
//

import SwiftUI
import Lottie

struct LottieView: UIViewRepresentable {
    var filename: String

    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        let animationView = LottieAnimationView(name: filename)
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()

        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)

        NSLayoutConstraint.activate([
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
        ])

        return view
    }

    func updateUIView(_ uiView: UIView, context: Context) {}
}


#Preview {
    LottieView(filename: "T")
}
