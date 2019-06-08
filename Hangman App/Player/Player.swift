//
//  Player.swift
//  Hangman
//
//  Created by Tomasz Kielar on 08/06/2019.
//  Copyright © 2019 Tomasz Kielar. All rights reserved.
//

import UIKit

struct LeaderboardPlayer {
    var nickname : String
    var points : Int
    var dictionary : String
}

struct PlayerAccount {
    var nickname : String
    var description : String
    var totalPointsGained : Int
    var lastMatches : [LeaderboardPlayer]
}
