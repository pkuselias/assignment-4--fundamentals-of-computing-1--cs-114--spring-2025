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
int boardSpotsPlayed = 0;

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
  
  for (int i = 0; i < plays.length; i++) {
    if (plays[i] != 0) {
      boardSpotsPlayed++;
    }
  }
  
  if (boardSpotsPlayed > 7) {
    gameOver = true;
  }
}
  
        

        
  
