//
//  OptionsControl.swift
//  Hangman App
//
//  Created by Tomasz Kielar on 22/05/2019.
//  Copyright © 2019 Tomasz Kielar. All rights reserved.
//

import UIKit

extension OptionsVC {
    func setLanguage() {
        let chosenLanguage = defaults.string(forKey: "language")
        if chosenLanguage == "Polski" || chosenLanguage == "Polish" {
            let back = "Cofnij"
            let languageText = "Język"
            let dictionaryText = "Słownik"
            let themeText = "Styl"
            let optionsText = "Opcje"
            
            backButton.setTitle(back, for: .normal)
            languageLbl.text = languageText
            dictionaryLbl.text = dictionaryText
            themeLbl.text = themeText
            optionsLbl.text = optionsText
            
        }
        else {
            let back = "Back"
            let languageText = "Language"
            let dictionaryText = "Dictionary"
            let themeText = "Theme"
            let optionsText = "Options"
            
            backButton.setTitle(back, for: .normal)
            languageLbl.text = languageText
            dictionaryLbl.text = dictionaryText
            themeLbl.text = themeText
            optionsLbl.text = optionsText
        }
        
    }
    
    func adjustTheme() {
        let chosenTheme = defaults.string(forKey: "theme")
        if chosenTheme == "Jasny" || chosenTheme == "Light" {
            setLabelColors(color: colors.lightThemeLabel)
            setBackgroundColor(color: colors.lightTheme)
            setSegmentedColors(color: .black)
        }
        else {
            setLabelColors(color: colors.darkThemeLabel)
            setBackgroundColor(color: colors.darkTheme)
            setSegmentedColors(color: .black)
        }
    }
    
    func setLabelColors (color: UIColor) {
        optionsLbl.textColor = color
        backButton.setTitleColor(color, for: .normal)
        languageLbl.textColor = color
        dictionaryLbl.textColor = color
        themeLbl.textColor = color
    }
    func setBackgroundColor (color:UIColor) {
        view.backgroundColor = color
    }
    func setSegmentedColors (color: UIColor) {
        let titleTextAttributes = [NSAttributedString.Key.foregroundColor: color]
        languageSc.setTitleTextAttributes(titleTextAttributes, for: .normal)
        languageSc.setTitleTextAttributes(titleTextAttributes, for: .selected)
        
        dictionarySc.setTitleTextAttributes(titleTextAttributes, for: .normal)
        dictionarySc.setTitleTextAttributes(titleTextAttributes, for: .selected)
        
        themeSc.setTitleTextAttributes(titleTextAttributes, for: .normal)
        themeSc.setTitleTextAttributes(titleTextAttributes, for: .selected)
    }
}
