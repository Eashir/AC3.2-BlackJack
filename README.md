# BlackJack

An app that lets you plsy the infamous card game

## Evan

### Button Actions

The initial step was to layout the thought process and keep note on what had to be done.
Master Plan:
Player clicks a button to place their bet -> Label updates to show Players bet placed
Bet is subtracted from Player's $$ If playerMoney = 0, game over! Labels updated
 
DEAL -> Cards get drawn for Player AND Dealer
     -> One Dealer card is shown and one is hidden
     -> The scores of both Dealer and Player are updated; they become the sum of the card values
 
HIT  -> Player draws, updates Player score
     -> I Player score over 21 then game is over, hidden card is revealed, dealer score is updated, label updated to show you lost, playing is set to false.
 
STAND -> Only Dealer draws as much as they want to, Dealer total gets updated ; If              
         Dealer score over 21 then game is over, label updated to show you won,playing set to false.

DOUBLE -> playerBet is doubled IF they have sufficient funds
       -> Reveals the hidden card IF BlackJack and updates Dealer score and GG
       -> Player draws, updates Player score
       -> STAND
 
SPLIT -> Hand splits into two hands
      -> 1st hand gets dealt automatically
      -> Actions then occur to both hands
      
      This helped us get the gist of what to do. And so I went onto the Bet function and made it so that clicking on any button with a value would add that to the total amount youd like to bet, capped at $500 since thats the max bet amount possible at once in Blackjack. Went onto the Deal function and made it so that clicking on it dealt the Player an Dealer their cards. 
 
