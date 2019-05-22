//
//  OptionsVC.swift
//  Hangman App
//
//  Created by Tomasz Kielar on 22/05/2019.
//  Copyright © 2019 Tomasz Kielar. All rights reserved.
//

import UIKit

class OptionsVC: UIViewController {
    //CONSTANTS AND VARIABLES
    let defaults = UserDefaults.standard
    let colors = Colors()
    // OUTLETS
    @IBOutlet weak var languageSc: UISegmentedControl!
    @IBOutlet weak var dictionarySc: UISegmentedControl!
    @IBOutlet weak var themeSc: UISegmentedControl!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var languageLbl: UILabel!
    @IBOutlet weak var dictionaryLbl: UILabel!
    @IBOutlet weak var themeLbl: UILabel!
    @IBOutlet weak var optionsLbl: UILabel!
    
    
    // MAIN
    override func viewDidLoad() {
        super.viewDidLoad()
        setSegmentedControlsLanguage()
        setSegmentedControlsDictionary()
        setSegmentedControlsTheme()
        setLanguage()
        adjustTheme()
        
        themeLbl.adjustsFontSizeToFitWidth = true
        themeLbl.minimumScaleFactor = 0.1

    }
    // ACTIONS
    @IBAction func goBack(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func languageAction(_ sender: UISegmentedControl) {
        let passedData = updateData(segmented: sender)
        uploadData(passedData: passedData, keyForSave: "language")
        setLanguage()
        print(passedData)
    }
    @IBAction func dictionaryAction(_ sender: UISegmentedControl) {
        let passedData = updateData(segmented: sender)
        uploadData(passedData: passedData, keyForSave: "dictionary")
        print(passedData)
    }
    @IBAction func themeAction(_ sender: UISegmentedControl) {
        let passedData = updateData(segmented: sender)
        uploadData(passedData: passedData, keyForSave: "theme")
        adjustTheme()
        print(passedData)
    }
    
    
    //FUNCTIONS
        //Saving Settings
    func updateData (segmented : UISegmentedControl)->String {
        let selectedSegment = segmented.selectedSegmentIndex
        let chosenSetting = segmented.titleForSegment(at: selectedSegment)
        return chosenSetting!
    }
    func uploadData (passedData : String, keyForSave : String) {
        defaults.set(passedData, forKey: keyForSave)
    }
        //Setting Segmented Controls on launch
    func setSegmentedControlsLanguage () {
        let firstData = defaults.string(forKey: "language") ?? "English"
        if firstData == "Polish" || firstData == "Polski" {
            let secondData = "English"
            languageSc.setTitle(firstData, forSegmentAt: 0)
            languageSc.setTitle(secondData, forSegmentAt: 1)
            
        }
        else {
            let secondData = "Polish"
            languageSc.setTitle(firstData, forSegmentAt: 0)
            languageSc.setTitle(secondData, forSegmentAt: 1)
        }
    
    }
    
    func setSegmentedControlsDictionary () {
        let firstData = defaults.string(forKey: "dictionary") ?? "English"
        if firstData == "Polish" || firstData == "Polski" {
            let secondData = "English"
            dictionarySc.setTitle(firstData, forSegmentAt: 0)
            dictionarySc.setTitle(secondData, forSegmentAt: 1)
            
        }
        else {
            let secondData = "Polish"
            dictionarySc.setTitle(firstData, forSegmentAt: 0)
            dictionarySc.setTitle(secondData, forSegmentAt: 1)
        }
        
    }
    
    func setSegmentedControlsTheme () {
        let firstData = defaults.string(forKey: "theme") ?? "Light"
        if firstData == "Dark" || firstData == "Ciemny" {
            let secondData = "Light"
            themeSc.setTitle(firstData, forSegmentAt: 0)
            themeSc.setTitle(secondData, forSegmentAt: 1)
            
        }
        else {
            let secondData = "Dark"
            themeSc.setTitle(firstData, forSegmentAt: 0)
            themeSc.setTitle(secondData, forSegmentAt: 1)
        }
    }
    
    
    
    
}

