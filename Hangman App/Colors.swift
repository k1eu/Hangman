//
//  Colors.swift
//  Hangman App
//
//  Created by Tomasz Kielar on 11/05/2019.
//  Copyright © 2019 Tomasz Kielar. All rights reserved.
//

import UIKit

class Colors {
    var lightTheme:UIColor!
    var lightThemeLabel: UIColor!
    var lightThemeButton: UIColor!
    
    var darkTheme:UIColor!
    var darkThemeLabel: UIColor!
    var darkThemeButton: UIColor!
    
    init() {
        let darkColor = UIColor(red: 41.0 / 255.0, green: 42.0 / 255.0, blue: 47.0 / 255.0, alpha: 1.0)
        
        let lightColor = UIColor(red: 191.0 / 255.0, green: 191.0 / 255.0, blue: 191.0 / 255.0, alpha: 1.0)
        
        // DARK THEME
            //GRADIENT
        self.darkTheme = darkColor
            //LABELS
        self.darkThemeLabel = UIColor(red: 255.0, green: 255.0, blue: 255.0, alpha: 1.0)
            //BUTTONS
        self.darkThemeButton = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        // LIGHT THEME
            //GRADIENT
        self.lightTheme = lightColor
            //LABELS
        self.lightThemeLabel = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
            //BUTTONS
        self.lightThemeButton = UIColor(red: 205.0, green: 205.0, blue: 205.0, alpha: 1.0)
        
    }
}
