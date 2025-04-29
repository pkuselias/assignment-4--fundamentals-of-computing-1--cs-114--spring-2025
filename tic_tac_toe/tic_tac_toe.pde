boolean isPickingLocation;
boolean yourTurn;
int possibleLocation;

void setup() {
  size(500, 500);
  drawBoard();
  computerLocation();
  yourTurn = true;
}

void draw() {
  drawSpots();
  
  if (yourTurn == true) {
    determineGameStatus();
    firstUserTurnPlayed = true;
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
            plays[0] = O_SHAPE;
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
            plays[1] = O_SHAPE;
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
            plays[2] = O_SHAPE;
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
            plays[3] = O_SHAPE;
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
            plays[4] = O_SHAPE;
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
            plays[5] = O_SHAPE;
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
            plays[6] = O_SHAPE;
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
            plays[7] = O_SHAPE;
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
            plays[8] = O_SHAPE;
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

void computerLocation() {
  isPickingLocation = true;
  while (isPickingLocation == true) {
    possibleLocation = int(random(0, 9));
    switch (possibleLocation) {
      case 0:
        if (canSelectZero == true) {
          canSelectZero = false;
          plays[possibleLocation] = X_SHAPE;
          isPickingLocation = false;
        }
        
        break;
        
      case 1:
        if (canSelectOne == true) {
          canSelectOne = false;
          plays[possibleLocation] = X_SHAPE;
          isPickingLocation = false;
        }
        
        break;
        
      case 2:
        if (canSelectTwo == true) {
          canSelectTwo = false;
          plays[possibleLocation] = X_SHAPE;
          isPickingLocation = false;
        }
        
        break;
        
      case 3:
        if (canSelectThree == true) {
          canSelectThree = false;
          plays[possibleLocation] = X_SHAPE;
          isPickingLocation = false;
        }
        
        break;
        
      case 4:
        if (canSelectFour == true) {
          canSelectFour = false;
          plays[possibleLocation] = X_SHAPE;
          isPickingLocation = false;
        }
        
        break;
        
      case 5:
        if (canSelectFive == true) {
          canSelectFive = false;
          plays[possibleLocation] = X_SHAPE;
          isPickingLocation = false;
        }
        
        break;
        
      case 6:
        if (canSelectSix == true) {
          canSelectSix = false;
          plays[possibleLocation] = X_SHAPE;
          isPickingLocation = false;
        }
        
        break;
        
      case 7:
        if (canSelectSeven == true) {
          canSelectSeven = false;
          plays[possibleLocation] = X_SHAPE;
          isPickingLocation = false;
        }
        
        break;
        
      case 8:
        if (canSelectEight == true) {
          canSelectEight = false;
          plays[possibleLocation] = X_SHAPE;
          isPickingLocation = false;
        }
        
        break;
    }
  }
}

void drawSpots() {
  for (int drawSpot = 0; drawSpot < plays.length; drawSpot++) {
    if (plays[drawSpot] == X_SHAPE) {
      drawShape(X_SHAPE, drawSpot);
    }
    
    if (plays[drawSpot] == O_SHAPE) {
      drawShape(O_SHAPE, drawSpot);
    }
  }
}
