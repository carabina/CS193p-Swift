//
//  Deck.swift
//  CardGame
//
//  Created by Victor Yudi on 6/5/14.
//  Copyright (c) 2014 Leaf Tech. All rights reserved.
//

import Foundation

var cardDeck = Array<PlayingCard>()

class Deck {
    
    func addCard(card : PlayingCard , atTop : Bool = false){
        
        if atTop {
            cardDeck.insert(card, atIndex: 0);
        }else{
            cardDeck += card
        }
    }
    
    func drawRandomCard() -> PlayingCard{
        var card = PlayingCard()
        var randomNumber : Int = Int(arc4random()) % (cardDeck.count - 1)
        card = cardDeck[randomNumber]
        cardDeck.removeAtIndex(randomNumber)
        return card
    }
    
}
