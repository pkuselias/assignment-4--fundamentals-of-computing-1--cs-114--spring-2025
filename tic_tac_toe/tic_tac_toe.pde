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
