//
//  ViewController.swift
//  Concentration
//
//  Created by xiaolin qian on 7/31/18.
//  Copyright © 2018 xiaolin qian. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    
    var count = 0 {
        didSet {
            clickCountLabel.text = "Click Time: \(count)"
        }
    }
    
    let emojis = ["🍎","🍊","🍇","🍈"]
 
    @IBOutlet var cardButtons: [UIButton]!
    
    
    @IBOutlet weak var clickCountLabel: UILabel!
    
    @IBAction func TouchCard1(_ sender: UIButton) {
        count += 1
        if let cardNumber = cardButtons.index(of: sender) {
            flicCard(callEmoji: emojis[cardNumber], on: sender)
        
        
        }
    }
    
    func flicCard(callEmoji insideEmoji:String, on button: UIButton) {
        if (button.currentTitle == insideEmoji) {
            button.setTitle("", for: UIButton.State.normal)
            button.backgroundColor = #colorLiteral(red: 0.9973798394, green: 0.5146915317, blue: 0.9789187312, alpha: 1)
        }
        else {
            button.setTitle(insideEmoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
    }

}



