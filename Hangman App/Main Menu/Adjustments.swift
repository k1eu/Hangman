//
//  Adjustments.swift
//  Hangman
//
//  Created by Tomasz Kielar on 09/06/2019.
//  Copyright © 2019 Tomasz Kielar. All rights reserved.
//

import UIKit

extension ViewController {
    func adjustLanguage() {
        let chosenLanguage = defaults.string(forKey: "language") ?? "English"
        print(chosenLanguage)
        if chosenLanguage == "Polish" || chosenLanguage == "Polski" {
            
            playButton.setTitle("Graj Teraz!", for: .normal)
            twoPlayerButton.setTitle("Graj 1v1", for: .normal)
            optionsButton.setTitle("Opcje", for: .normal)
            titleLabel.text = "Wisielec"
            print("dziala?")
        }
        else {
            playButton.setTitle("Play now!", for: .normal)
            twoPlayerButton.setTitle("Play 1v1", for: .normal)
            optionsButton.setTitle("Options", for: .normal)
        }
    }
    func adjustTheme() {
        let chosenTheme = defaults.string(forKey: "theme")
        view.backgroundColor = .clear
        print(chosenTheme)
        if chosenTheme == "Jasny" || chosenTheme == "Light" {
            setBackgroundColor(color: colors.lightTheme)
            setLabels(color: colors.lightThemeLabel)
            setButtonsBackground(color: colors.lightThemeButton)
            
        }
        else {
            setBackgroundColor(color: colors.darkTheme)
            setLabels(color: colors.darkThemeLabel)
            setButtonsBackground(color: colors.darkThemeButton)
            titleLogo.setImageColor(color: .white)
        }
    }
    
    func setBackgroundColor(color:UIColor) {
        view.backgroundColor = color
    }
    
    func setLabels(color:UIColor) {
        titleLabel.textColor = color
        playButton.setTitleColor(color, for: .normal)
        twoPlayerButton.setTitleColor(color, for: .normal)
        optionsButton.setTitleColor(color, for: .normal)
        sayingsLabel.textColor = color
    }
    func setButtonsBackground(color:UIColor) {
        playButton.backgroundColor = color
        twoPlayerButton.backgroundColor = color
        optionsButton.backgroundColor = color
    }
}
