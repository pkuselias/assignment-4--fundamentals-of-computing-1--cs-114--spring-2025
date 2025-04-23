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
  
  if (yourTurn == true) {
    determineGameStatus();
    if (gameOver == true) {
      noLoop();
      return;
      
    } else {
      noLoop();
    }
    
  } else {
    determineGameStatus();
    if (gameOver == true) {
      noLoop();
      return;
    
    } else { 
      computerLocation();
      yourTurn = true;
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
            canSelectZero = false;
            plays[0] = DRAW_O;
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
            canSelectOne = false;
            plays[1] = DRAW_O;
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
            canSelectTwo = false;
            plays[2] = DRAW_O;
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
            canSelectThree = false;
            plays[3] = DRAW_O;
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
            canSelectFour = false;
            plays[4] = DRAW_O;
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
            canSelectFive = false;
            plays[5] = DRAW_O;
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
            canSelectSix = false;
            plays[6] = DRAW_O;
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
            canSelectSeven = false;
            plays[7] = DRAW_O;
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
            canSelectEight = false;
            plays[8] = DRAW_O;
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
