//
//  ViewController.swift
//  Dice Roll
//
//  Created by Nabyl Bennouri on 5/1/19.
//  Copyright © 2019 Three14. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndexLeft: Int = 0
    var randomDiceIndexRight: Int = 0
    
    @IBOutlet weak var congratulationLabelView: UILabel!
    @IBOutlet weak var diceImageViewRight: UIImageView!
    @IBOutlet weak var diceImageViewLeft: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateDice()
    }


    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDice()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDice()
    }
    
    func updateDice() {
        // Roll the dice
        randomDiceIndexLeft = Int.random(in: 0 ... 5) + 1
        randomDiceIndexRight = Int.random(in: 0 ... 5) + 1
        congratulationLabelView.text = ""
        
        diceImageViewRight.image = UIImage(named: "dice\(randomDiceIndexRight)")
        diceImageViewLeft.image = UIImage(named: "dice\(randomDiceIndexLeft)")
        
        if (randomDiceIndexLeft == randomDiceIndexRight) {
            congratulationLabelView.text = "Congratulations! You have a double"
        }
    }
}

