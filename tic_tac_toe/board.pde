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
boolean firstUserTurnPlayed = false;
int boardSpotsPlayed;
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
  for (int spots = 0; spots < plays.length; spots++) {
    if (plays[spots] != 0) {
      boardSpotsPlayed++;
    }
  }
  
  if (boardSpotsPlayed == 9) {
    gameOver = true;
    if (winner == false) {
      draw = true;
    }
  }
}

void determineGameStatus() {
  checkForWinner(DRAW_X);
  if (winner == true) {
    println("The computer wins!");
    return;
  }

  checkForWinner(DRAW_O);
    if (winner == true) {
      println("You win!");
      return;
    }

  checkForDraw();
  if (draw == true) {
    println("It's a tie!");
    return;
  }
  
  if (gameOver == false) {
    if (yourTurn == true) {
      if (firstUserTurnPlayed == true) {
        println("The game is still in progress...");
      }
    }
  }
}
