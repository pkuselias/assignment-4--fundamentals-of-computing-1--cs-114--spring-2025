void setup() {
  size(500, 500);
}

void draw() {
  drawBoard();
  if (yourTurn == false) {
    noLoop();
    computerLocation();
    drawShape(1, xLocation);
    checkForWinner(1);
    checkForDraw();
    if (gameOver == true) {
      if (winner == true) {
        println("The computer wins!");
      } else {
        println("It's a draw!");
      }
    } else {
      yourTurn = true;
      loop();
    }
    
  } else {
    noLoop();
    drawShape(2, oLocation);
    checkForWinner(2);
    checkForDraw();
    if (gameOver == true) {
      noLoop();
      if (winner == true) {
        println("You win!");
      } else {
        println("It's a draw!");
      }
    } else {
      yourTurn = false;
      loop();
    }
  }
}

void keyPressed() {
  switch (key) {
    case '0':
      if (canSelectZero == true) {
        oLocation = 0;
        plays[oLocation] = 2;
        canSelectZero = false;
        
        break;
        
      } else {
        if (gameOver == false) {
          println("Duplicate key pressed");
        }
        
        break;
      }
      
    case '1':
      if (canSelectOne == true) {
        oLocation = 1;
        plays[oLocation] = 2;
        canSelectOne = false;
      
        break;
        
      } else {
        if (gameOver == false) {
          println("Duplicate key pressed");
        }
        
        break;
      }
      
    case '2':
      if (canSelectTwo == true) {
        oLocation = 2;
        plays[oLocation] = 2;
        canSelectTwo = false;
      
        break;
        
      } else {
        if (gameOver == false) {
          println("Duplicate key pressed");
        }
        
        break;
      }
      
    case '3':
      if (canSelectThree == true) {
        oLocation = 3;
        plays[oLocation] = 2;
        canSelectThree = false;
      
        break;
        
      } else {
        if (gameOver == false) {
          println("Duplicate key pressed");
        }
        
        break;
      }
      
    case '4':
      if (canSelectFour == true) {
        oLocation = 4;
        plays[oLocation] = 2;
        canSelectFour = false;
      
        break;
        
      } else {
        if (gameOver == false) {
          println("Duplicate key pressed");
        }
        
        break;
      }
      
    case '5':
      if (canSelectFive == true) {
        oLocation = 5;
        plays[oLocation] = 2;
        canSelectFive = false;
      
        break;
        
      } else {
        if (gameOver == false) {
          println("Duplicate key pressed");
        }
        
        break;
      }
      
    case '6':
      if (canSelectSix == true) {
        oLocation = 6;
        plays[oLocation] = 2;
        canSelectSix = false;
      
        break;
        
      } else {
        if (gameOver == false) {
          println("Duplicate key pressed");
        }
        
        break;
      }
      
    case '7':
      if (canSelectSeven == true) {
        oLocation = 7;
        plays[oLocation] = 2;
        canSelectSeven = false;
      
        break;
        
      } else {
        if (gameOver == false) {
          println("Duplicate key pressed");
        }
        
        break;
      }
      
    case '8':
      if (canSelectEight == true) {
        oLocation = 8;
        plays[oLocation] = 2;
        canSelectEight = false;
      
        break;
        
      } else {
        if (gameOver == false) {
          println("Duplicate key pressed");
        }
        
        break;
      }
      
    default:
      if (gameOver == false) {
        println("Invalid key pressed");
      }
  }
  
  if (gameOver == true) {
    println("Why are you still trying? The game is over!");
  }
}
