//
//  ViewController.swift
//  Hangman App
//
//  Created by Tomasz Kielar on 11/05/2019.
//  Copyright © 2019 Tomasz Kielar. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    // Outlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var titleLogo: UIImageView!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var twoPlayerButton: UIButton!
    @IBOutlet weak var optionsButton: UIButton!
    // Constants and variables
    let colors = Colors()
    let constraints = Constraints()
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        constraints.setUpMenuButtons(playButton: playButton, twoPlayerButton: twoPlayerButton, optionsButton: optionsButton)
        
    }
    override func viewWillAppear(_ animated: Bool) {
        adjustTheme()
        adjustLanguage()
    }
    // Functions
    
    func adjustLanguage() {
        let chosenLanguage = defaults.string(forKey: "language")
        print(chosenLanguage!)
        if chosenLanguage! == "Polish" || chosenLanguage == "Polski" {
            
            playButton.setTitle("Graj Teraz!", for: .normal)
            twoPlayerButton.setTitle("Graj 1v1", for: .normal)
            optionsButton.setTitle("Opcje", for: .normal)
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
    }
    func setButtonsBackground(color:UIColor) {
        playButton.backgroundColor = color
        twoPlayerButton.backgroundColor = color
        optionsButton.backgroundColor = color
    }
    // Actions
}

