//
//  NextRound.swift
//  Hangman
//
//  Created by Tomasz Kielar on 21/06/2019.
//  Copyright © 2019 Tomasz Kielar. All rights reserved.
//

import UIKit

extension SoloGameVC {
    @IBAction func nextAction(_ sender: UIButton) {
        
        lineOneHorizontalStack.removeFromSuperview()
        lineTwoHorizontalStack.removeFromSuperview()
        lineThreeHorizontalStack.removeFromSuperview()
        theWord = ""
        separatedWord = []
        checkCharacter = ""
        mistakeCounter = 0
        lineOneHorizontalStack = UIStackView()
        lineTwoHorizontalStack = UIStackView()
        lineThreeHorizontalStack = UIStackView()
        gameImagesField.image = UIImage()
        
        adjustDictionary()
        adjustLanguage()
        setUpStackView()
        
        gameImagesField.isHidden = false
        wordField.isHidden = false
        endGameStack.isHidden = true
    }
}
