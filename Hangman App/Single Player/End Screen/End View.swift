//
//  End View.swift
//  Hangman
//
//  Created by Tomasz Kielar on 09/06/2019.
//  Copyright © 2019 Tomasz Kielar. All rights reserved.
//

import UIKit

extension CheckIfWonOrLost {
    func setStackView(endStack : UIStackView, view: UIView) {
        //basics
        endStack.translatesAutoresizingMaskIntoConstraints = false
        endStack.isHidden = false
        endStack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        endStack.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50).isActive = true
        endStack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 25).isActive = true
        endStack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -25).isActive = true
        //background
        var backgroundView: UIView = {
            let view = UIView()
            view.backgroundColor = .gray
            view.layer.cornerRadius = 10.0
            return view
        }()
        pinBackground(backgroundView, to: endStack)
    }
    
    func pinBackground(_ view: UIView, to stackView: UIStackView) {
        view.translatesAutoresizingMaskIntoConstraints = false
        stackView.insertSubview(view, at: 0)
        view.pin(to: stackView)
    }
    
    
}
extension UIView {
func pin(to view: UIView) {
    NSLayoutConstraint.activate([
        leadingAnchor.constraint(equalTo: view.leadingAnchor),
        trailingAnchor.constraint(equalTo: view.trailingAnchor),
        topAnchor.constraint(equalTo: view.topAnchor),
        bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
}
}
