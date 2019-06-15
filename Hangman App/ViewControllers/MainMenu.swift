//
//  ViewController.swift
//  Hangman App
//
//  Created by Tomasz Kielar on 11/05/2019.
//  Copyright © 2019 Tomasz Kielar. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITextFieldDelegate {
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
    let blackView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nickField.text = ""
        constraints.setUpMenuButtons(playButton: playButton, twoPlayerButton: twoPlayerButton, optionsButton: optionsButton)
        nickField.delegate = self
        firstLogin()
        setSubmitButtonState()
        self.hideKeyboardWhenTappedAround()
        
        
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
    
    //WHAT TO DO ON RETURN
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    // Actions
    @IBAction func submitNick(_ sender: UIButton) {
        if nickField.text == "" {
            loginLabel.text = "try again"
        }
        else {
            setNick(sender: nickField)
            print(defaults.string(forKey: "nickname"))
            dismissStack()
        }
        
        
    }
}

