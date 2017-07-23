//
//  ViewController.swift
//  War11
//
//  Created by Sain-R Edwards Jr. on 7/22/17.
//  Copyright © 2017 Sain-R Edwards Jr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftCardImageStackView: UIImageView!
    @IBOutlet weak var leftPlayerScoreLabel: UILabel!
    var leftPlayerScore = 0
    
    @IBOutlet weak var rightCardImageStackView: UIImageView!
    @IBOutlet weak var rightPlayerScoreLabel: UILabel!
    var rightPlayerScore = 0
    
    let cardNames = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king", "ace"]

    
    @IBAction func dealButtonPressed(_ sender: Any) {
        
        let leftNumber = Int(arc4random_uniform(13))
        
        leftCardImageStackView.image = UIImage(named: cardNames[leftNumber])
        
        let rightNumber = Int(arc4random_uniform(13))
        
        rightCardImageStackView.image = UIImage(named: cardNames[rightNumber])
        
        if leftNumber > rightNumber {
            leftPlayerScore += 1
            leftPlayerScoreLabel.text = String(leftPlayerScore)
        }
        else if leftNumber == rightNumber {
            // It's a tie
        }
        else {
            rightPlayerScore += 1
            rightPlayerScoreLabel.text = String(rightPlayerScore)
        }
        
    }

}

