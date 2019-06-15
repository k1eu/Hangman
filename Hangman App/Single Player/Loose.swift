//
//  Loose.swift
//  Hangman
//
//  Created by Tomasz Kielar on 10/06/2019.
//  Copyright © 2019 Tomasz Kielar. All rights reserved.
//

import UIKit

extension CheckIfWonOrLost {
    
    func executeLost(imagesField : UIImageView, textField : UITextField, endStack: UIStackView, view:UIView) {
        imagesField.isHidden = true
        textField.isHidden = true
        
        setStackView(endStack: endStack, view: view)
    }
    
    func configureEndScreenLost(titleLabel : UILabel, scoreLabel : UILabel, submitButton : UIButton , nextButton : UIButton, points: Int) {
        let chosenLanguage = defaults.string(forKey: "language")
        if chosenLanguage == "Polski" || chosenLanguage == "Polish" {
            let scoreText = "Wynik: \(points)"
            let winLooseText = "Przegrana"
            let submitText = "Zapisz"
            let nextText = "Dalej"
            
            titleLabel.text = winLooseText
            scoreLabel.text = scoreText
            submitButton.setTitle(submitText, for: .normal)
            nextButton.setTitle(nextText, for: .normal)
        }
        else {
            let scoreText = "Score: \(points)"
            let winLooseText = "You lost!"
            let submitText = "Sumbit"
            let nextText = "Next"
            
            titleLabel.text = winLooseText
            scoreLabel.text = scoreText
            submitButton.setTitle(submitText, for: .normal)
            nextButton.setTitle(nextText, for: .normal)
        }
        
    }
    
}
