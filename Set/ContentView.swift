//
//  ContentView.swift
//  Set
//
//  Created by asmb on 8/6/2564 BE.
//

import SwiftUI

struct ContentView: View {
    var game = SetGame()
    var cardPerRow = 4
    
    @State var selectedCards = [UUID]()
    
    var body: some View {
        VStack(
            alignment: .center,
            spacing: 16.0
        ) {
            ForEach(0..<game.cards.count/cardPerRow) { row in
                HStack(
                    alignment: .center,
                    spacing: 16.0
                ) {
                    ForEach(0..<cardPerRow) { index in
                        let cardIndex = (Int(row) * cardPerRow) + index
                        let card = game.cards[cardIndex]
                        Button("\((Int(row) * cardPerRow) + index)") {
                            selectedCards.append(card.id)
                            print("\(game.cards[index])")
                        }
                        .frame(width: 80.0, height: 120.0)
                        .border(selectedCards.contains(card.id) ? Color.red : Color.black, width: 2)
                    }
                }
            }
            VStack {
                Button("Deal Cards") {
                    print("deal")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
