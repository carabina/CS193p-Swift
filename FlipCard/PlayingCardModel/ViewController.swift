//
//  ViewController.swift
//  CardGame
//
//  Created by Victor Yudi on 6/4/14.
//  Copyright (c) 2014 Leaf Tech. All rights reserved.
//

import UIKit

var deck = PlayingCardDeck()
var card = PlayingCard()

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func cardTouchBtn(sender : UIButton) {

        if !sender.currentTitle{sender.setTitle("", forState: UIControlState.Normal)}
        
        if  sender.currentTitle.isEmpty{

            if let randomPlayingCard = deck.drawRandomCard(){
                card = randomPlayingCard as PlayingCard
            }
            
            sender.setBackgroundImage(UIImage(named : "cardFront"), forState: UIControlState.Normal)
            sender.setTitle(card.contents, forState: UIControlState.Normal)
            
        }else{
            
            sender.setBackgroundImage(UIImage(named : "cardBack"), forState: UIControlState.Normal)
            sender.setTitle("", forState: UIControlState.Normal)
        }
    }

}

