//
//  ViewController.swift
//  dice
//
//  Created by xscotophilic on 03/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    let dice = [
        UIImage(named : "diceone"),
        UIImage(named : "dicetwo"),
        UIImage(named : "dicethree"),
        UIImage(named : "dicefour"),
        UIImage(named : "dicefive"),
        UIImage(named : "dicesix"),
    ]

    @IBOutlet weak var diceImageViewLeft: UIImageView!
    @IBOutlet weak var diceImageViewRight: UIImageView!
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceImageViewLeft.image = dice.randomElement()!
        diceImageViewRight.image = dice.randomElement()!
    }
}
