//
//  WonOrLost.swift
//  Hangman
//
//  Created by Tomasz Kielar on 08/06/2019.
//  Copyright © 2019 Tomasz Kielar. All rights reserved.
//

import UIKit

class CheckIfWonOrLost {
    let defaults = UserDefaults.standard
    func ifLost (mistakePoints : Int)->Bool {
        if mistakePoints >= 8 {
            print("you loose")
            return true
        }
        else {
            return false
        }
    }
    
    func ifWon(firstStack : UIStackView,secondStack: UIStackView, thirdStack: UIStackView, wordCharacters : [String]) -> Bool {
        
        let wordLength = wordCharacters.count
        var testValues : [Bool] = []
        
        // KROTKIE SLOWA
        
        if wordLength <= 6 {
            for element in 0..<wordLength {
                let stackLabel = firstStack.arrangedSubviews[element] as! UILabel
                if stackLabel.text == wordCharacters[element] {
                    testValues.append(true)
                }
            }
        }
        
        // SREDNIE SLOWA
            
        else if wordLength > 6 && wordLength <= 12 {
            print("wchodziX2")
            for element in 0..<6 {
                let stackLabelFirst = firstStack.arrangedSubviews[element] as! UILabel
                if stackLabelFirst.text == wordCharacters[element] {
                    testValues.append(true)
                }
            }
            for element in 0..<wordLength-6 {
                print("wchodzix3")
                let stackLabelSecond = secondStack.arrangedSubviews[element] as! UILabel
                if stackLabelSecond.text == wordCharacters[element+6] {
                    testValues.append(true)
                }
            }
        }
            
        //DLUGIE SLOWA
            
        else if wordLength > 12 && wordLength <= 18 {
            for element in 0..<6 {
                let stackLabelFirst = firstStack.arrangedSubviews[element] as! UILabel
                if stackLabelFirst.text == wordCharacters[element] {
                    testValues.append(true)
                }
            }
            for element in 6..<wordLength-6 {
                let stackLabelSecond = secondStack.arrangedSubviews[element] as! UILabel
                if stackLabelSecond.text == wordCharacters[element+6] {
                    testValues.append(true)
                }
            }
            for element in 12..<wordLength-12 {
                let stackLabelThird = thirdStack.arrangedSubviews[element] as! UILabel
                if stackLabelThird.text == wordCharacters[element+12] {
                    testValues.append(true)
                }
            }
        }
        print(testValues)
        
        if testValues.count == wordCharacters.count {
            if checkIfContaintsOnlyTrues(arguments: testValues) {
                print("YOU WON")
                return true
            }
        }
        return false
        
    }
    func checkIfContaintsOnlyTrues(arguments : [Bool]) -> Bool {
        let amountOfArguments = arguments.count
        var temporaryBoolean = false
        for element in 0..<amountOfArguments {
            if arguments[element] == true {
                temporaryBoolean = true
            }
            else {
                temporaryBoolean = false
                break
            }
            
        }
        return temporaryBoolean
    }

}
