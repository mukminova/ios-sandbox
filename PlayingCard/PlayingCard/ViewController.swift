//
//  ViewController.swift
//  PlayingCard
//
//  Created by Li on 10/03/2019.
//  Copyright © 2019 Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var deck = PlayingCardDeck()
    
    @IBOutlet var cardViews: [PlayingCardView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var cards = [PlayingCard]()
        for _ in 1...((cardViews.count+1)/2) {
            let card = deck.draw()!
            cards += [card, card]
        }
        for cardView in cardViews {
            cardView.isFaceUp = true
            let card = cards.remove(at: cards.count.arc4random)
            cardView.rank = card.rank.order
            cardView.suit = card.suit.rawValue
            cardView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(flipCard(_:))))
        }
        //        for _ in 1...10 {
        //            if let card = deck.draw() {
        //                print("\(card)")
        //            }
        //        }
    }
    
    @objc func flipCard(_ recognizer: UITapGestureRecognizer) {
        switch recognizer.state {
        case .ended:
            if let choosenCardView = recognizer.view as? PlayingCardView {
                UIView.transition(with: choosenCardView, duration: 0.6, options: [.transitionFlipFromLeft], animations: {choosenCardView.isFaceUp = !choosenCardView.isFaceUp})
            }
        default:
            break
        }
    }
    
    //    @IBAction func flipCard(_ sender: UITapGestureRecognizer) {
    //        switch sender.state {
    //        case .ended:
    //            playingCardView.isFaceUp = !playingCardView.isFaceUp
    //        default:
    //            break
    //        }
    //    }
    //
    //    @IBOutlet weak var playingCardView: PlayingCardView! {
    //        didSet {
    //            let swipe = UISwipeGestureRecognizer(target: self, action: #selector(nextCard))
    //            swipe.direction = [.left, .right]
    //            playingCardView.addGestureRecognizer(swipe)
    //            let pich = UIPinchGestureRecognizer(target: playingCardView, action: #selector(PlayingCardView.adjusTFaceCardScale(byHandlingGestureRecognizedBy:)))
    //            playingCardView.addGestureRecognizer(pich)
    //
    //        }
    //    }
    //
    //    @objc func nextCard() {
    //        if let card = deck.draw() {
    //            playingCardView.rank = card.rank.order
    //            playingCardView.suit = card.suit.rawValue
    //        }
    //    }
}
