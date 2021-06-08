//
//  SetGame.swift
//  Set
//
//  Created by asmb on 8/6/2564 BE.
//

import Foundation

struct SetGame {
    public var cards = [Card]()
    private var noOfInitCards = 12
    
    public mutating func dealCards() {
        for _ in 1...3 {
            let card = Card()
            cards += [card]
        }
    }
    
    init() {
        for _ in 1...noOfInitCards {
            let card = Card()
            print(card)
            cards += [card]
        }
    }
}
