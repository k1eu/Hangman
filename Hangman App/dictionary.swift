//
//  dictionary.swift
//  Hangman App
//
//  Created by Tomasz Kielar on 02/06/2019.
//  Copyright © 2019 Tomasz Kielar. All rights reserved.
//

import UIKit

class WordsDictionary {
    var wordsList : [String] = []
    let pathUs = URL(fileURLWithPath: Bundle.main.path(forResource: "dictionaryUS", ofType: "txt")!)
    let pathPl = URL(fileURLWithPath: Bundle.main.path(forResource: "dictionaryPL", ofType: "txt")!)
    
    func executePolishDictionary() {
        var temporaryDataString : String = ""
        wordsList = []
        do {
            temporaryDataString = try String(contentsOf: pathPl , encoding: .utf8)
        } catch let error as NSError {
            print("Failed reading from URL: \(pathPl), Error: " + error.localizedDescription)
        }
        wordsList = temporaryDataString.components(separatedBy: "\n")
        wordsList = wordsList.dropLast()
    }
    func executeEnglishDictionary() {
        var temporaryDataString : String = ""
        wordsList = []
        do {
            temporaryDataString = try String(contentsOf: pathUs , encoding: .utf8)
        } catch let error as NSError {
            print("Failed reading from URL: \(pathUs), Error: " + error.localizedDescription)
        }
        wordsList = temporaryDataString.components(separatedBy: "\n")
        wordsList = wordsList.dropLast()
    }

    func pickAWord()->String {
        let random = Int.random(in: 0...wordsList.count-1)
        let temporaryWord = wordsList[random]
        return temporaryWord
    }
    
    func wordIntoCharacters (theWord: String)-> [String] {
        let wordLenght = theWord.count
        var wordByCharacters : [String] = []
        for every in 0...wordLenght-1 {
            if every == 0 {
                wordByCharacters.append(String(theWord.first!))
            }
            else {
                let indexZnaku = theWord.index(theWord.startIndex,offsetBy: every)
                wordByCharacters.append(String(theWord[indexZnaku])) }
        }
    
        return wordByCharacters
    }
    
}
