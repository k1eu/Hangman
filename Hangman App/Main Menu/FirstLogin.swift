//
//  FirstLogin.swift
//  Hangman
//
//  Created by Tomasz Kielar on 10/06/2019.
//  Copyright © 2019 Tomasz Kielar. All rights reserved.
//

import UIKit


extension ViewController {
    
    
    func firstLogin() {
        blackView.backgroundColor = UIColor(white: 0, alpha: 0.66)
        view.addSubview(blackView)
        blackView.frame = view.frame
        view.bringSubviewToFront(nicknameStack)
        
        
        if defaults.bool(forKey: "firstLaunch") == false {
            hideThingsMainScreen()
            configureStack(nickStack: nicknameStack)
        }
    }
    
    func hideThingsMainScreen() {
        titleLogo.isHidden = false
        sayingsLabel.isHidden = true
        nicknameStack.isHidden = false
        
    }
    func showBackThings() {
        titleLogo.isHidden = false
        sayingsLabel.isHidden = false
        nicknameStack.isHidden = true
    }
    func configureStack(nickStack : UIStackView) {
        //background
        var backgroundView: UIView = {
            let view = UIView()
            view.backgroundColor = UIColor(red: 100/255, green: 100/255, blue: 100/255, alpha: 0.8)
            view.layer.cornerRadius = 10.0
            return view
        }()
        pinBackground(backgroundView, to: nickStack)
    }
 
    func pinBackground(_ view: UIView, to stackView: UIStackView) {
        view.translatesAutoresizingMaskIntoConstraints = false
        stackView.insertSubview(view, at: 0)
        view.pin(to: stackView)
    }
    
    func setSubmitButtonState() {
        nickField.addTarget(self, action: #selector(textFieldIsNotEmpty), for: .editingChanged)
    }
    
    @objc func textFieldIsNotEmpty(sender: UITextField) {
        let text = nickField.text ?? ""
        if text == "" || text == nil || text == "Nickname" || nickField.isEditing == false {
            nickSubmit.isEnabled = false
        }
        else {
        nickSubmit.isEnabled = true
        }
    }
    
    func setNick(sender: UITextField) {
        defaults.set(sender.text, forKey: "nickname")
    }
    
    func dismissStack() {
        nicknameStack.isHidden = true
        blackView.removeFromSuperview()
    }
    
    
    
}

