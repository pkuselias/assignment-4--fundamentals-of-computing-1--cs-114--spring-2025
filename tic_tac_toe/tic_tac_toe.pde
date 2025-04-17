void setup() {
  size(500, 500);
}

void draw() {
  drawBoard();
  if (yourTurn) {
    drawShape(2, location);
    yourTurn = false;
  } else {
    drawShape(1, location);
    yourTurn = true;
  }
}

void keyPressed() {
  switch (key) {
    case '0':
      if (canSelectZero == true) {
        location = 0;
        canSelectZero = false;
        
        break;
        
      } else {
        println("Duplicate key pressed");
        break;
      }
      
    case '1':
      if (canSelectOne == true) {
        location = 1;
        canSelectOne = false;
      
        break;
        
      } else {
        println("Duplicate key pressed");
        break;
      }
      
    case '2':
      if (canSelectTwo == true) {
        location = 2;
        canSelectTwo = false;
      
        break;
        
      } else {
        println("Duplicate key pressed");
        break;
      }
      
    case '3':
      if (canSelectThree == true) {
        location = 3;
        canSelectThree = false;
      
        break;
        
      } else {
        println("Duplicate key pressed");
        break;
      }
      
    case '4':
      if (canSelectFour == true) {
        location = 4;
        canSelectFour = false;
      
        break;
        
      } else {
        println("Duplicate key pressed");
        break;
      }
      
    case '5':
      if (canSelectFive == true) {
        location = 5;
        canSelectFive = false;
      
        break;
        
      } else {
        println("Duplicate key pressed");
        break;
      }
      
    case '6':
      if (canSelectSix == true) {
        location = 6;
        canSelectSix = false;
      
        break;
        
      } else {
        println("Duplicate key pressed");
        break;
      }
      
    case '7':
      if (canSelectSeven == true) {
        location = 7;
        canSelectSeven = false;
      
        break;
        
      } else {
        println("Duplicate key pressed");
        break;
      }
      
    case '8':
      if (canSelectEight == true) {
        location = 8;
        canSelectEight = false;
      
        break;
        
      } else {
        println("Duplicate key pressed");
        break;
      }
      
    default:
      println("Invalid key pressed");
  }
}
