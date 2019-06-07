//
//  Stack Views.swift
//  Hangman
//
//  Created by Tomasz Kielar on 07/06/2019.
//  Copyright © 2019 Tomasz Kielar. All rights reserved.
//

import UIKit

extension SoloGameVC {
    func setUpStackView() {
        let lettersCount = separatedWord.count
        
        if lettersCount <= 6 {
            
            for every in 1...lettersCount {
                let letterLabel = UILabel()
                letterLabel.text = "_"
                editLabelInStack(label: letterLabel)
                lineOneHorizontalStack.addArrangedSubview(letterLabel)
            }
            view.addSubview(lineOneHorizontalStack)
            adjustStackViewSolo(stack: lineOneHorizontalStack)
            
        }
        else if lettersCount > 6 && lettersCount <= 12 {
            for every in 1...6 {
                let letterLabel = UILabel()
                letterLabel.text = "_"
                editLabelInStack(label: letterLabel)
                lineOneHorizontalStack.addArrangedSubview(letterLabel)
            }
            view.addSubview(lineOneHorizontalStack)
            adjustStackViewSolo(stack: lineOneHorizontalStack)
            for every in 7...lettersCount {
                let letterLabel = UILabel()
                letterLabel.text = "_"
                editLabelInStack(label: letterLabel)
                lineTwoHorizontalStack.addArrangedSubview(letterLabel)
            }
            view.addSubview(lineTwoHorizontalStack)
            adjustStackViewSecond(stack: lineTwoHorizontalStack)
           
            
            
        }
        else if lettersCount > 12 && lettersCount <= 18 {
            for every in 1...6 {
                let letterLabel = UILabel()
                letterLabel.text = "_"
                editLabelInStack(label: letterLabel)
                lineOneHorizontalStack.addArrangedSubview(letterLabel)
            }
            view.addSubview(lineOneHorizontalStack)
            adjustStackViewSolo(stack: lineOneHorizontalStack)
            
            for every in 7...12 {
                let letterLabel = UILabel()
                letterLabel.text = "_"
                editLabelInStack(label: letterLabel)
                lineTwoHorizontalStack.addArrangedSubview(letterLabel)
            }
            view.addSubview(lineTwoHorizontalStack)
            adjustStackViewSecond(stack: lineTwoHorizontalStack)
            
            for every in 13...lettersCount {
                let letterLabel = UILabel()
                letterLabel.text = "_"
                editLabelInStack(label: letterLabel)
                lineThreeHorizontalStack.addArrangedSubview(letterLabel)
            }
            view.addSubview(lineThreeHorizontalStack)
            adjustStackViewThird(stack: lineThreeHorizontalStack)
            
            
        }
    }
    func adjustStackViewSolo(stack : UIStackView) {
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.alignment = .center
        stack.spacing = 20
        stack.topAnchor.constraint(equalTo: wordField.bottomAnchor, constant: 25).isActive = true
        stack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    func adjustStackViewSecond(stack : UIStackView) {
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.alignment = .center
        stack.spacing = 20
        stack.topAnchor.constraint(equalTo: lineOneHorizontalStack.bottomAnchor, constant: 25).isActive = true
        stack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    func adjustStackViewThird(stack : UIStackView) {
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.alignment = .center
        stack.spacing = 20
        stack.topAnchor.constraint(equalTo: lineTwoHorizontalStack.bottomAnchor, constant: 25).isActive = true
        stack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }
    func editLabelInStack(label: UILabel) {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .red
        label.textAlignment = .center
        // label.widthAnchor.constraint(equalToConstant: 40).isActive = true
        //label.heightAnchor.constraint(equalToConstant: 40).isActive = true
        label.font = label.font.withSize(40)
    }
}
