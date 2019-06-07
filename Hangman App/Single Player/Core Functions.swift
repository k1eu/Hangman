//
//  Core Functions.swift
//  Hangman
//
//  Created by Tomasz Kielar on 07/06/2019.
//  Copyright © 2019 Tomasz Kielar. All rights reserved.
//

import UIKit

extension SoloGameVC {
    func checkIfContains() {
        if theWord.contains(checkCharacter) {
            let temporaryIndexes = createIndexes(contains: checkCharacter)
            print(temporaryIndexes)
            for element in temporaryIndexes {
                if element < 6 {
                   let labelInStack = lineOneHorizontalStack.arrangedSubviews[element] as! UILabel
                    labelInStack.text = checkCharacter
                }
                else if element >= 6 && element < 12 {
                    let labelInStack = lineTwoHorizontalStack.arrangedSubviews[element-6] as! UILabel
                    labelInStack.text = checkCharacter
                }
                else if element >= 12 && element <= 18 {
                    let labelInStack = lineThreeHorizontalStack.arrangedSubviews[element-12] as! UILabel
                    labelInStack.text = checkCharacter
                }
            }
            
        }
        else {
            addMistake()
        }
    }
    
    func createIndexes(contains: String)->[Int] {
        var array : [Int] = []
        for number in 0..<separatedWord.count {
            if separatedWord[number] == checkCharacter {
                array.append(number)
            }
        }
        return array
     /*   return separatedWord.enumerated().compactMap {
            $0.element == contains ? $0.offset : nil
        } */
    }
    func addMistake() {
        mistakeCounter += 1
        gameImagesField.image = UIImage(named: imagesNames[mistakeCounter])
    }
    
}

