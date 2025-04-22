void setup() {
  size(500, 500);
}

void draw() {
  drawBoard();
  if (yourTurn == false) {
    noLoop();
    drawShape(1, location);
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
    drawShape(2, location);
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
        location = 0;
        plays[location] = 2;
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
        location = 1;
        plays[location] = 2;
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
        location = 2;
        plays[location] = 2;
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
        location = 3;
        plays[location] = 2;
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
        location = 4;
        plays[location] = 2;
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
        location = 5;
        plays[location] = 2;
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
        location = 6;
        plays[location] = 2;
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
        location = 7;
        plays[location] = 2;
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
        location = 8;
        plays[location] = 2;
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
