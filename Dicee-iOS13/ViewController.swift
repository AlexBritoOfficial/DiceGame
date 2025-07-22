//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let diceImages: [UIImage] = [
        UIImage(imageLiteralResourceName: "DiceOne"),
        UIImage(imageLiteralResourceName: "DiceTwo"),
        UIImage(imageLiteralResourceName: "DiceThree"),
        UIImage(imageLiteralResourceName: "DiceFour"),
        UIImage(imageLiteralResourceName: "DiceFive"),
        UIImage(imageLiteralResourceName: "DiceSix")]
    
    var isPlayerOneTurn: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diceImageView1.image = diceImages[rollDice()]
        diceImageView2.image = diceImages[rollDice()]
    }


    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        if(isPlayerOneTurn){
            diceImageView1.image = diceImages[rollDice()]
        }
        
        else {
            diceImageView2.image = diceImages[rollDice()]
        }
        
        isPlayerOneTurn.toggle()
        
    }
    
    func rollDice() -> Int {
        return Int.random(in: 0...5)
    }
}

