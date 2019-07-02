//
//  Card.swift
//  Concentration
//
//  Created by Li on 16/01/2019.
//  Copyright © 2019 Li. All rights reserved.
//

import Foundation

struct Card: Hashable {
    
//    var hashValue: Int { return identifier }
//
//    static func ==(lhs: Card, rhs: Card) -> Bool {
//        return lhs.identifier == rhs.identifier
//    }
    
    var isFaceUp = false
    var isMatched = false
    private var identifier: Int
    
    private static var identifierFactory = 0
    
    private static func getUniqIdentifier() -> Int {
        identifierFactory += 1
        print(identifierFactory)
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqIdentifier()
    }
    
}
