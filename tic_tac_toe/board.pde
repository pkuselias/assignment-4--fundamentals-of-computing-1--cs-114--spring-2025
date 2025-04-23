boolean yourTurn = false;
boolean canSelectZero = true;
boolean canSelectOne = true;
boolean canSelectTwo = true;
boolean canSelectThree = true;
boolean canSelectFour = true;
boolean canSelectFive = true;
boolean canSelectSix = true;
boolean canSelectSeven = true;
boolean canSelectEight = true;
boolean gameOver = false;
boolean winner = false;
boolean draw = false;
boolean isPickingLocation = true;
int boardSpotsPlayed;
int possibleLocation;

int[] plays = new int[9];

void checkForWinner(int shape) {
  if (plays[4] == shape) {
    if (plays[1] == shape) {
      if (plays[7] == shape) {
        gameOver = true;
        winner = true;
      }
    }
    if (plays[3] == shape) {
      if (plays[5] == shape) {
        gameOver = true;
        winner = true;
      }
    }
    if (plays[0] == shape) {
      if (plays[8] == shape) {
        gameOver = true;
        winner = true;
      }
    }
    if (plays[2] == shape) {
      if (plays[6] == shape) {
        gameOver = true;
        winner = true;
      }
    }
  }
  
  if (plays[0] == shape) {
    if (plays[1] == shape) {
      if (plays[2] == shape) {
        gameOver = true;
        winner = true;
      }
    }
    if (plays[3] == shape) {
      if (plays[6] == shape) {
        gameOver = true;
        winner = true;
      }
    }
  }
  
  if (plays[8] == shape) {
    if (plays[6] == shape) {
      if (plays[7] == shape) {
        gameOver = true;
        winner = true;
      }
    }
    if (plays[2] == shape) {
      if (plays[5] == shape) {
        gameOver = true;
        winner = true;
      }
    }
  }
}

void checkForDraw() {
  boardSpotsPlayed = 0;
  for (int i = 0; i < plays.length; i++) {
    if (plays[i] != 0) {
      boardSpotsPlayed++;
    }
  }
  
  if (boardSpotsPlayed > 7) {
    gameOver = true;
  }
}

void computerLocation() {
  while (isPickingLocation == true) {
    possibleLocation = int(random(0, 9));
    switch (possibleLocation) {
      case 0:
        if (canSelectZero == true) {
          canSelectZero = false;
          isPickingLocation = false;
          location = possibleLocation;
          plays[location] = 1;
          
          break;
        }
        
      case 1:
        if (canSelectOne == true) {
          canSelectOne = false;
          isPickingLocation = false;
          location = possibleLocation;
          plays[location] = 1;
          
          break;
        }
        
      case 2:
        if (canSelectTwo == true) {
          canSelectTwo = false;
          isPickingLocation = false;
          location = possibleLocation;
          plays[location] = 1;
          
          break;
        }
        
      case 3:
        if (canSelectThree == true) {
          canSelectThree = false;
          isPickingLocation = false;
          location = possibleLocation;
          plays[location] = 1;
          
          break;
        }
        
      case 4:
        if (canSelectFour == true) {
          canSelectFour = false;
          isPickingLocation = false;
          location = possibleLocation;
          plays[location] = 1;
          
          break;
        }
        
      case 5:
        if (canSelectFive == true) {
          canSelectFive = false;
          isPickingLocation = false;
          location = possibleLocation;
          plays[location] = 1;
          
          break;
        }
        
      case 6:
        if (canSelectSix == true) {
          canSelectSix = false;
          isPickingLocation = false;
          location = possibleLocation;
          plays[location] = 1;
          
          break;
        }
        
      case 7:
        if (canSelectSeven == true) {
          canSelectSeven = false;
          isPickingLocation = false;
          location = possibleLocation;
          plays[location] = 1;
          
          break;
        }
        
      case 8:
        if (canSelectEight == true) {
          canSelectEight = false;
          isPickingLocation = false;
          location = possibleLocation;
          plays[location] = 1;
          
          break;
        }
    }
  }
}
        
        
  
        

        
  
