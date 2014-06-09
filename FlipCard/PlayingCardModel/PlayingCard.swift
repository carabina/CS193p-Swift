//
//  PlayingCard.swift
//  CardGame
//
//  Created by Victor Yudi on 6/5/14.
//  Copyright (c) 2014 Leaf Tech. All rights reserved.
//

import Foundation

class PlayingCard : Card{
    
    @lazy var rankList : Array<String> = {
        
        return ["?" , "1" , "2" , "3" , "4" , "5" , "6"
            , "7" , "8" , "9" , "10" , "J" , "Q" , "K"]
    }()
    
    @lazy var validSuits : Array<String> = {
    
        return ["♠︎" , "♣︎" , "♥︎" , "♦︎"];
    }()

    @lazy var maxRank : Int = {

        return (self.rankList.count - 1)
    }()
    
    @lazy var rank : Int = {
        var rank = Int()
        return rank
    }()
    
    @lazy var suit : String = {
        var lazy = String()
        return lazy
    }()
   
    func overrrideContents(){
        self.contents = ("\(rankList[self.rank])\(self.suit)")
    }
}
