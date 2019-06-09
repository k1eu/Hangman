//
//  Constraints.swift
//  Hangman App
//
//  Created by Tomasz Kielar on 11/05/2019.
//  Copyright © 2019 Tomasz Kielar. All rights reserved.
//

import UIKit

class Constraints {
    func setUpMenuButtons(playButton : UIButton, twoPlayerButton : UIButton, optionsButton : UIButton) {
        let buttons = [playButton,twoPlayerButton,optionsButton]
        for everyItem in buttons {
            everyItem.layer.cornerRadius = 8.0
            everyItem.titleLabel?.textAlignment = .center
            everyItem.titleLabel?.adjustsFontSizeToFitWidth = true
            everyItem.titleLabel?.numberOfLines = 3
        }
    }
}
