//
//  EmojiMemoryGame.swift
//  MatchItXCode (iOS)
//
//  Created by Xyd on 2023-02-23.
//

import Foundation



class EmojiMemoryGame {
    static let emojis = ["💀","😉","😈","🥲","🤣","🥹","🤤","🤯","😰","😶‍🌫️","🎃","🫶","👄","👀","🐨","🐯","🦁","🐮","🐷","🐽"]

    static func createMemoryGame() -> MemoryGame<String>{
        MemoryGame<String>(numberOfPairsOfCards: 4){ pairIndex in
            EmojiMemoryGame.emojis[pairIndex]
        }
    }
    
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    
    
}
