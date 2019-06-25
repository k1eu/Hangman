//
//  Submit.swift
//  Hangman
//
//  Created by Tomasz Kielar on 10/06/2019.
//  Copyright © 2019 Tomasz Kielar. All rights reserved.
//

import UIKit

extension SoloGameVC {
    
    @IBAction func submitAction(_ sender: UIButton) {
        guard let tempPlayer = defaults.string(forKey: "nickname") else {return}
        guard let tempDictionary = defaults.string(forKey: "dictionary") else {return}
        let tempPoints = points
        
        let tempLeaderboardPlayer = LeaderboardPlayer(nickname: tempPlayer, points: tempPoints, dictionary: tempDictionary)
        
        if defaults.array(forKey: "leaderboardNames") == nil || defaults.array(forKey: "leaderboardPoints") == nil || defaults.array(forKey: "leaderboardDictionaries") == nil {
            let tempNicks : [String] = [tempPlayer]
            let tempDictionaries : [String] = [tempDictionary]
            let tempNumbers : [Int] = [tempPoints]
            
            defaults.set(tempNicks, forKey: "leaderboardNames")
            defaults.set(tempNumbers, forKey: "leaderboardPoints")
            defaults.set(tempDictionaries, forKey: "leaderboardDictionaries")
            
        }
        else {
        var getNames = defaults.array(forKey: "leaderboardNames") as! [String]
        var getPoints = defaults.array(forKey: "leaderboardPoints") as! [Int]
        var getDictionaries = defaults.array(forKey: "leaderboardDictionaries") as! [String]
        
        getNames.append(tempPlayer)
        getPoints.append(tempPoints)
        getDictionaries.append(tempDictionary)
        
        defaults.set(getNames, forKey: "leaderboardNames")
        defaults.set(getPoints, forKey: "leaderboardPoints")
        defaults.set(getDictionaries, forKey: "leaderboardDictionaries")
        
        }
        print(defaults.array(forKey: "leaderboardNames")!)
        print(defaults.array(forKey: "leaderboardPoints")!)
        print(defaults.array(forKey: "leaderboardDictionaries")!)
        dismiss(animated: true, completion: nil)
        
    }
    
    
}
