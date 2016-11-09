//
//  BlackJackViewController.swift
//  BlackJack
//
//  Created by Eric Chang on 11/7/16.
//  Copyright © 2016 Eric Chang. All rights reserved.
//

import UIKit


class BlackJackViewController: UIViewController {
  
  @IBOutlet weak var dealButton: UIButton!
  var deckID: String?
  var drawEndPoint: String?
  var player = 0
  var dealer = 0
  var card: String?
  var playing = false
  var playerMoney = 1000
  var playerBet = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    getDeck(endPoint: "https://deckofcardsapi.com/api/deck/new/shuffle/?deck_count=6")
    
    
  }
  
  func getDeck(endPoint: String) {
    APIRequestManager.manager.getData(endPoint: "\(endPoint)") { (data: Data?) in
      if  let validData = data,
        let validDeck = Deck.deck(from: validData) {
        let newDeck = validDeck
        self.deckID = newDeck.deckID
        self.drawEndPoint = "https://deckofcardsapi.com/api/deck/\(self.deckID!)/draw/?count=1"
      }
    }
  }
  
  func dealPlayer(endPoint: String) {
    APIRequestManager.manager.getData(endPoint: "\(endPoint)") { (data: Data?) in
      if  let validData = data,
        let validCard = Card.cards(from: validData) {
        let dealtCard = validCard.value
        self.player += dealtCard
      }
    }
    
    
  }
    
    func checkIfPlaying() {
        while playing {
            dealPlayer(endPoint: self.drawEndPoint!)
            if player == 21 || dealer == 21 {
                playing = false
                //Label for game status will say "YOU WIN!" or "YOU LOSE!"
            }
        }
    }
    
    

    /*
     //PLACING BET: This is Bet button action function
     @IBAction func bet(_ sender: UIButton) {
     
     let num = sender.currentTitle
     
     playerBet Int(num!)! //Player clicks on "chips" to increment their total bet by the chip value
     
     playerMoney -= Int(num!)! //Each bet takes away from playerMoney
     
     playerBetLabel.text? = String(playerBet) //This updates the label to show the Player how much $$ they've put at stake thus far
     }
     */
    
    

  
  // MARK: - Navigation
  
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
    
  }
  
  
}
