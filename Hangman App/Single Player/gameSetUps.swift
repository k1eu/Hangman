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
    func adjustLanguage () {
        let chosenLanguage = defaults.string(forKey: "language")
        if chosenLanguage == "Polski" || chosenLanguage == "Polish" {
            let fieldText = "Wprowadz literę"
            wordField.text = fieldText
        }
        else {
            let fieldText = "Enter a letter"
            wordField.text = fieldText
        }
    }
    func adjustTheme () {
        let checkTheme = defaults.string(forKey: "theme")
        // FOR EVERY THEME
        nextRoundButton.backgroundColor = .lightGray
        nextRoundButton.layer.cornerRadius = 5
        submitButton.backgroundColor = .lightGray
        submitButton.layer.cornerRadius = 5
        
        if checkTheme == "Jasny" || checkTheme == "Light" {
            setBackgroundColor(color: colors.lightTheme)
            menuButton.setTitleColor(colors.lightThemeLabel, for: .normal)
        }
        else {
            setBackgroundColor(color: colors.darkTheme)
            menuButton.setTitleColor(colors.darkThemeLabel, for: .normal)
            
            
        }
    }
    
    func setTextColorLightMode(label: UILabel) {
        label.textColor = colors.lightThemeLabel
        
    }
    func setTextColorDarkMode(label : UILabel) {
        label.textColor = colors.darkThemeLabel
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
