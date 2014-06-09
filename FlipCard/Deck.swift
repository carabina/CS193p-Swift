// 
//  Deck.swift
//  CardGame
//
//  Created by Victor Yudi on 6/5/14.
//  Copyright (c) 2014 Leaf Tech. All rights reserved.
//

import Foundation

var cardDeck = Array<Card>()

class Deck {
    
    func addCard(card : Card , atTop : Bool = false){
        
        if atTop {
            cardDeck.insert(card, atIndex: 0);
        }else{
            cardDeck += card
        }
    }
    
    func drawRandomCard() -> Card{

        var randomNumber : Int = Int(rand()) % (cardDeck.count - 1)
        var card = cardDeck[randomNumber]
        cardDeck.removeAtIndex(randomNumber)
        return card
    }
    
}
