//
//  Enemy.swift
//  rpgoop
//
//  Created by Serge on 05/02/2016.
//  Copyright © 2016 Serge. All rights reserved.
//

import Foundation

class Enemy: Character {
    var loot: [String] {
        return ["Rusty Dagger", "Cracked Buckler"]
    }
    
    var type: String {
        return "Grunt"
    }
    
    func dropLoot() -> String? { //? indique que la valeur de retour est optional, du coup on peut retourner nil
        if !isAlive {
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[rand]
        }
        return nil //pour pouvoir retourner nil, on doit préciser que la valeur de retour est un optional
    }
}