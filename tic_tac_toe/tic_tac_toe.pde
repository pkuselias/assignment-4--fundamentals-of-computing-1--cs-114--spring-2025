void setup() {
  size(500, 500);
  computerLocation();
  yourTurn = true;
}

void draw() {
  drawBoard();
  
  for (int drawSpot = 0; drawSpot < plays.length; drawSpot++) {
    if (plays[drawSpot] == 1) {
      drawShape(1, drawSpot);
    }
    
    if (plays[drawSpot] == 2) {
      drawShape(2, drawSpot);
    }
  }
  
  if (gameOver == true) {
    return;
  }
  
  if (yourTurn == false) {
    determineGameStatus();
    if (gameOver == true) {
      noLoop();
      return;
      
    } else {
      computerLocation();
      yourTurn = true;
    }
    
  } else {
    determineGameStatus();
    if (gameOver == true) {
      noLoop();
      return;
      
    } else {
      yourTurn = false;
    }
  }
}

void keyPressed() {
  if (gameOver == true) {
    println("Why are you still trying? The game is over!");
    
  } else {
    if (yourTurn == true) {
      switch (key) {
        case '0':
          if (canSelectZero == true) {
            plays[0] = 2;
            canSelectZero = false;
            yourTurn = false;
            loop();
            
            break;
            
          } else {
            if (gameOver == false) {
              println("This spot is already taken!");
            }
              
            break;
          }
            
        case '1':
          if (canSelectOne == true) {
            plays[1] = 2;
            canSelectOne = false;
            yourTurn = false;
            loop();
            
            break;
              
          } else {
            if (gameOver == false) {
              println("This spot is already taken!");
            }
              
            break;
          }
            
        case '2':
          if (canSelectTwo == true) {
            plays[2] = 2;
            canSelectTwo = false;
            yourTurn = false;
            loop();
            
            break;
              
          } else {
            if (gameOver == false) {
              println("This spot is already taken!");
            }
              
            break;
          }
            
        case '3':
          if (canSelectThree == true) {
            plays[3] = 2;
            canSelectThree = false;
            yourTurn = false;
            loop();
            
            break;
              
          } else {
            if (gameOver == false) {
              println("This spot is already taken!");
            }
              
            break;
          }
            
        case '4':
          if (canSelectFour == true) {
            plays[4] = 2;
            canSelectFour = false;
            yourTurn = false;
            loop();
            
            break;
              
          } else {
            if (gameOver == false) {
              println("This spot is already taken!");
            }
              
            break;
          }
            
        case '5':
          if (canSelectFive == true) {
            plays[5] = 2;
            canSelectFive = false;
            yourTurn = false;
            loop();
            
            break;
              
          } else {
            if (gameOver == false) {
              println("This spot is already taken!");
            }
              
            break;
          }
            
        case '6':
          if (canSelectSix == true) {
            plays[6] = 2;
            canSelectSix = false;
            yourTurn = false;
            loop();
            
            break;
            
          } else {
            if (gameOver == false) {
              println("This spot is already taken!");
            }
              
            break;
          }
            
        case '7':
          if (canSelectSeven == true) {
            plays[7] = 2;
            canSelectSeven = false;
            yourTurn = false;
            loop();
            
            break;
              
          } else {
            if (gameOver == false) {
              println("This spot is already taken!");
            }
              
            break;
          }
          
        case '8':
          if (canSelectEight == true) {
            plays[8] = 2;
            canSelectEight = false;
            yourTurn = false;
            loop();
            
            break;
              
          } else {
            if (gameOver == false) {
              println("This spot is already taken!");
            }
              
            break;
          }
            
        default:
          if (gameOver == false) {
            println("Invalid key pressed. Please press a number key from 0 - 8.");
          }
      }
    }
  }
}
