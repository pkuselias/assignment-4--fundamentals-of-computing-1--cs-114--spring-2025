void setup() {
  size(500, 500);
  computerLocation();
  yourTurn = true;
}

void draw() {
  drawBoard();
  
  for (int drawSpot = 0; drawSpot < plays.length; drawSpot++) {
    if (plays[drawSpot] == DRAW_X) {
      drawShape(1, drawSpot);
    }
    
    if (plays[drawSpot] == DRAW_O) {
      drawShape(2, drawSpot);
    }
  }
  
  if (gameOver == true) {
    return;
  }
  
  if (yourTurn == false) {
    computerLocation();
    determineGameStatus();
    if (gameOver == true) {
      noLoop();
      return;
      
    } else {
      noLoop();
      computerLocation();
      yourTurn = true;
    }
    
  } else {
    if (stopStatusFromRepeating == false) {
      determineGameStatus();
    }
    if (gameOver == true) {
      noLoop();
      return;
      
    } else {
      stopStatusFromRepeating = false;
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
            plays[0] = DRAW_O;
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
            plays[1] = DRAW_O;
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
            plays[2] = DRAW_O;
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
            plays[3] = DRAW_O;
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
            plays[4] = DRAW_O;
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
            plays[5] = DRAW_O;
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
            plays[6] = DRAW_O;
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
            plays[7] = DRAW_O;
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
            plays[8] = DRAW_O;
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
