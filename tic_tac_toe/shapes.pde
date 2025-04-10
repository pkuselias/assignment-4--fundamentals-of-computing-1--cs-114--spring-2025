void drawBoard() {
  line(width / 3, 0, width / 3, height);
  line((2 * width) / 3, 0, (2 * width) / 3, height);
  line(0, height / 3, width, height / 3);
  line(0, (2 * height) / 3, width, (2 * height) / 3);
}

void drawShape(Shape shape, int location) {
  switch (location) {
    case 0:
      x = 0;
      y = 0;
           break;
      
    case 1:
      x = width / 3;
      y = 0;
      
      break;
      
    case 2:
      x = (2 * width) / 3;
      y = 0;
      
      break;
      
    case 3:
      x = 0;
      y = height / 3;
      
      break;
      
    case 4:
      x = width / 3;
      y = height / 3;
      
      break;
      
    case 5:
      x = (2 * width) / 3;
      y = height / 3;
      
      break;
      
    case 6:
      x = 0;
      y = (2 * height) / 3;
      
      break;
      
    case 7:
      x = width / 3;
      y = (2 * height) / 3;
      
      break;
      
    case 8:
      x = (2 * width) / 3;
      y = (2 * height) / 3;
      
      break;
  }
  
  if (shape == Shape.X) {
    drawX(x, y);
    
  } else {
    drawO(x, y);
  }
}
