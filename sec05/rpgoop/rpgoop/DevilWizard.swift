//
//  DevilWizard.swift
//  rpgoop
//
//  Created by Sophie on 07/02/2016.
//  Copyright © 2016 Serge. All rights reserved.
//

import Foundation

class DevilWizard: Enemy {
    override var loot: [String] {
        return ["Magic wand", "Dark Amulet", "Salted Pork"]
    }
    
    override var type: String {
        return "Devil Wizard"
    }
}