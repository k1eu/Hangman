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
        setSegmentedControlsLanguage()
        setSegmentedControlsDictionary()
        setSegmentedControlsTheme()
        print(passedData)
    }
    @IBAction func dictionaryAction(_ sender: UISegmentedControl) {
        let passedData = updateData(segmented: sender)
        uploadData(passedData: passedData, keyForSave: "dictionary")
        print(passedData)
        setSegmentedControlsDictionary()
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
        let checkData = defaults.string(forKey: "language") ?? "English"
        if checkData == "Polish" || checkData == "Polski" {
            let firstData = "Polski"
            let secondData = "Angielski"
            languageSc.setTitle(secondData, forSegmentAt: 0)
            languageSc.setTitle(firstData, forSegmentAt: 1)
            languageSc.selectedSegmentIndex = 1
            
        }
        else {
            let firstData = "English"
            let secondData = "Polish"
            languageSc.setTitle(firstData, forSegmentAt: 0)
            languageSc.setTitle(secondData, forSegmentAt: 1)
            languageSc.selectedSegmentIndex = 0
        }
    
    }
    
    func setSegmentedControlsDictionary () {
        let checkData = defaults.string(forKey: "dictionary") ?? "English"
        let checkLang = defaults.string(forKey: "language") ?? "English"
        if checkData == "Polish" || checkData == "Polski" {
            if checkLang == "Polish" || checkLang == "Polski" {
                let firstData = "Angielski"
                let secondData = "Polski"
                dictionarySc.setTitle(firstData, forSegmentAt: 0)
                dictionarySc.setTitle(secondData, forSegmentAt: 1)
                
            }
            else {
                let firstData = "English"
                let secondData = "Polish"
                dictionarySc.setTitle(firstData, forSegmentAt: 0)
                dictionarySc.setTitle(secondData, forSegmentAt: 1)
            }
            dictionarySc.selectedSegmentIndex = 1
        }
            
        else {
            if checkLang == "Polish" || checkLang == "Polski" {
                let firstData = "Angielski"
                let secondData = "Polski"
                dictionarySc.setTitle(firstData, forSegmentAt: 0)
                dictionarySc.setTitle(secondData, forSegmentAt: 1)
                
            }
            else {
                let firstData = "English"
                let secondData = "Polish"
                dictionarySc.setTitle(firstData, forSegmentAt: 0)
                dictionarySc.setTitle(secondData, forSegmentAt: 1)
            }
            dictionarySc.selectedSegmentIndex = 0
        }
        
    }
    
    func setSegmentedControlsTheme () {
        let checkData = defaults.string(forKey: "theme") ?? "Light"
        let checkLang = defaults.string(forKey: "language") ?? "English"
        if checkData == "Light" || checkData == "Jasny" {
            if checkLang == "Polish" || checkLang == "Polski" {
                let firstData = "Jasny"
                let secondData = "Ciemny"
                themeSc.setTitle(firstData, forSegmentAt: 0)
                themeSc.setTitle(secondData, forSegmentAt: 1)
                
            }
            else {
                let firstData = "Light"
                let secondData = "Dark"
                themeSc.setTitle(firstData, forSegmentAt: 0)
                themeSc.setTitle(secondData, forSegmentAt: 1)
            }
            themeSc.selectedSegmentIndex = 0
        }
            
        else {
            if checkLang == "Polish" || checkLang == "Polski" {
                let firstData = "Jasny"
                let secondData = "Ciemny"
                themeSc.setTitle(firstData, forSegmentAt: 0)
                themeSc.setTitle(secondData, forSegmentAt: 1)
                
            }
            else {
                let firstData = "Light"
                let secondData = "Dark"
                themeSc.setTitle(firstData, forSegmentAt: 0)
                themeSc.setTitle(secondData, forSegmentAt: 1)
            }
            themeSc.selectedSegmentIndex = 1
        }
    }
    
    
    
    
}

