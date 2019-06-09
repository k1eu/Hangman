//
//  ImageColor.swift
//  Hangman
//
//  Created by Tomasz Kielar on 09/06/2019.
//  Copyright © 2019 Tomasz Kielar. All rights reserved.
//

import UIKit


extension UIImageView {
    func setImageColor(color: UIColor) {
        let tymczasowyObraz = self.image?.withRenderingMode(.alwaysTemplate)
        self.image = tymczasowyObraz
        self.tintColor = color
    }
}
