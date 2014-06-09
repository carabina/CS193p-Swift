//
//  Card.swift
//  CardGame
//
//  Created by Victor Yudi on 6/5/14.
//  Copyright (c) 2014 Leaf Tech. All rights reserved.
//

import Foundation

class Card {
    
    
    @lazy var contents : String = {
        var contents = String()
        return contents
    }()
    
    @lazy var isChosen : Bool = {
        var isChosen = Bool()
        return isChosen
    }()
    
    @lazy var isMatched : Bool = {
        var isMatched = Bool()
        return isMatched
    }()
}