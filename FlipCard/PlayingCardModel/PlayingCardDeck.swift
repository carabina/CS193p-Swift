//
//  PlayingCardDeck.swift
//  CardGame
//
//  Created by Victor Yudi on 6/5/14.
//  Copyright (c) 2014 Leaf Tech. All rights reserved.
//
import Foundation

class PlayingCardDeck : Deck{
    
    init(){
        
        super.init()
        
        for suit in card.validSuits{
            for rank in 1...card.maxRank{

                var card = PlayingCard()
                card.suit = suit
                card.rank = rank
                card.overrrideContents()
                
                self.addCard(card)
            }
        }
        
    }
}
