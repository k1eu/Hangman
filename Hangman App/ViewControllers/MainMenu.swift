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
    @IBOutlet weak var nicknameStack: UIStackView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var nickSubmit: UIButton!
    @IBOutlet weak var titleLogo: UIImageView!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var twoPlayerButton: UIButton!
    @IBOutlet weak var optionsButton: UIButton!
    @IBOutlet weak var sayingsLabel: UILabel!
    @IBOutlet weak var nickField: UITextField!
    @IBOutlet weak var loginLabel: UILabel!
    // Constants and variables
    let colors = Colors()
    let constraints = Constraints()
    let defaults = UserDefaults.standard
    let sayings = Sayings()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        constraints.setUpMenuButtons(playButton: playButton, twoPlayerButton: twoPlayerButton, optionsButton: optionsButton)
        
        firstLogin()
        setSubmitButtonState()
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        adjustTheme()
        adjustLanguage()
        rollTheSayings()
    }
    // Functions
    
    func rollTheSayings() {
        let checkLanguage = defaults.string(forKey: "language")
        if checkLanguage == "Polski" || checkLanguage == "Polish" {
            sayingsLabel.text = sayings.sayingsPolish.randomElement()
        }
        else {
           sayingsLabel.text = sayings.sayingsEnglish.randomElement()
        }
    }
    
    // Actions
    @IBAction func submitNick(_ sender: UIButton) {
        setNick(sender: nickField)
        print(defaults.string(forKey: "nickname"))
    }
}

