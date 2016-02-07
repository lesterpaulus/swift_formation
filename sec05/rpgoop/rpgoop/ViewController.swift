//
//  ViewController.swift
//  rpgoop
//
//  Created by Serge on 05/02/2016.
//  Copyright © 2016 Serge. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var printLbl: UILabel!
    
    @IBOutlet weak var playerHpLbl: UILabel!
    
    @IBOutlet weak var enemyHpLabel: UILabel!
    
    @IBOutlet weak var enemyImg: UIImageView!
    
    @IBOutlet weak var chestBtn: UIButton!
    
    var player: Player!
    var enemy: Enemy!
    var chestMessage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        generateRandomEnemy()
        player = Player(name: "DirtyLaundry21", hp: 110, attackPwr: 20)
        playerHpLbl.text  = "\(player.hp) HP"
    }
    
    func generateRandomEnemy() {
        let rand = Int(arc4random_uniform(2))
        
        if rand == 0 {
            enemy = Kimara(startingHp: 50, attackPwr: 12)
        }else {
            enemy = DevilWizard(startingHp: 60, attackPwr: 15)
        }
        enemyImg.hidden = false
    }
    
    @IBAction func onChestTapped(sender: AnyObject) {
        chestBtn.hidden = true
        printLbl.text = chestMessage
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "generateRandomEnemy", userInfo: nil, repeats: false)
    }
    
    @IBAction func onAttackTapped(sender: AnyObject) {
        printLbl.text = enemy.type
        if enemy.attemptAttack(player.attackPwr){
            printLbl.text = "Attacked \(enemy.type) for \(player.attackPwr) HP "
            enemyHpLabel.text = "\(enemy.hp) HP"
        }else{
            printLbl.text = "Attack was unsuccessful!"
        }
        
        if let loot = enemy.dropLoot() {
            player.addItemToInventory(loot)
            chestMessage = "\(player.name) found \(loot)"
            chestBtn.hidden = false
        }
        
        if !enemy.isAlive {
            enemyHpLabel.text = ""
            printLbl.text = "Killed \(enemy.type)"
            enemyImg.hidden = true
        }
    }
    
    

}

