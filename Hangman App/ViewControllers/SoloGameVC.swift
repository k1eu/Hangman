//
//  SoloGameVC.swift
//  Hangman App
//
//  Created by Tomasz Kielar on 22/05/2019.
//  Copyright © 2019 Tomasz Kielar. All rights reserved.
//

import UIKit

class SoloGameVC: UIViewController, UITextFieldDelegate {
    // Constants and variables
    let defaults = UserDefaults.standard
    let dictionary = WordsDictionary()
    let colors = Colors()
    var theWord:String = ""
    var separatedWord : [String] = []
    var checkCharacter : String = ""
    var imagesNames : [String] = [
        "first","second","third",
        "fourth","fifth","sixth",
        "seventh","eighth","nineth"
    ]
    var lineOneHorizontalStack = UIStackView()
    var lineTwoHorizontalStack = UIStackView()
    var lineThreeHorizontalStack = UIStackView()
    var mistakeCounter : Int = 0
    var points = 10
    var winOrLoose = CheckIfWonOrLost()
    
    
    // Outlets
    @IBOutlet weak var wordField: UITextField!
    @IBOutlet weak var gameImagesField: UIImageView!
    @IBOutlet weak var menuButton: UIButton!
    @IBOutlet weak var winLooseLabel: UILabel!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var nextRoundButton: UIButton!
    @IBOutlet weak var endGameStack: UIStackView!
    @IBOutlet weak var scoreLabel: UILabel!
    
    // Main
    override func viewDidLoad() {
        super.viewDidLoad()
        adjustTheme()
        adjustDictionary()
        self.hideKeyboardWhenTappedAround()
        wordField.delegate = self
        setUpStackView()
    }
    // Actions
    @IBAction func textInWordField(_ sender: UITextField) {
        
    }
    
    @IBAction func submitAction(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func nextAction(_ sender: UIButton) {
    }
    @IBAction func menuAction(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    // Functions
        //WHAT TO DO ON RETURN
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        checkCharacter = wordField.text ?? ""
        print(checkCharacter)
        wordField.text = ""
        checkIfContains()
        return false
    }
        //MAXIMUM NUMBER OF CHARACTERS IN TEXTFIELD == 1
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let textFieldText = textField.text,
            let rangeOfTextToReplace = Range(range, in: textFieldText) else {
                return false
        }
        let substringToReplace = textFieldText[rangeOfTextToReplace]
        let count = textFieldText.count - substringToReplace.count + string.count
        return count <= 1
    }
    
    
    
}


