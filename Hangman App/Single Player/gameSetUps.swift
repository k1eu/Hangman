//
//  gameSetUps.swift
//  Hangman App
//
//  Created by Tomasz Kielar on 02/06/2019.
//  Copyright © 2019 Tomasz Kielar. All rights reserved.
//

import UIKit


extension SoloGameVC {
    func setBackgroundColor (color:UIColor) {
        view.backgroundColor = color
    }
    func setLabelsColor (color: UIColor) {
        
    }
    func adjustTheme () {
        let checkTheme = defaults.string(forKey: "theme")
        if checkTheme == "Jasny" || checkTheme == "Light" {
            setBackgroundColor(color: colors.lightThemeButton)
        }
        else {
            setBackgroundColor(color: colors.darkTheme)
        }
    }
    
    func adjustDictionary () {
        let checkLanguage = defaults.string(forKey: "dictionary")
        if checkLanguage == "Polski" || checkLanguage == "Polish"
        {
            dictionary.executePolishDictionary()
            theWord = dictionary.pickAWord()
            separatedWord = dictionary.wordIntoCharacters(theWord: theWord)
            print(theWord)
            print(separatedWord)
        }
        else {
            dictionary.executeEnglishDictionary()
            theWord = dictionary.pickAWord()
            separatedWord = dictionary.wordIntoCharacters(theWord: theWord)
            print(theWord)
            print(separatedWord)
        }
    }
    
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
