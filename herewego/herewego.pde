float fps;
float mspf;

void setup() {
  size(960, 720);
  
  fps = 180;
  mspf = 1000 / fps;
  frameRate(fps);
  
  //keyInit();
  
  displayBoard[0][9] = displayColor.I;
  displayBoard[1][9] = displayColor.I;
  displayBoard[2][9] = displayColor.I;
  displayBoard[3][9] = displayColor.I;
  
  board[0][9] = 1;
  board[1][9] = 1;
  board[2][9] = 1;
  board[3][9] = 1;
  
  displayBoard[0][0] = displayColor.O;
  displayBoard[0][1] = displayColor.O;
  displayBoard[1][0] = displayColor.O;
  displayBoard[1][1] = displayColor.O;

  board[0][0] = 1;
  board[0][1] = 1;
  board[1][0] = 1;
  board[1][1] = 1;

  //displayBoard[0][0] = displayColor.T;
  //displayBoard[0][1] = displayColor.T;
  //displayBoard[0][2] = displayColor.T;
  //displayBoard[1][1] = displayColor.T;
  
  //displayBoard[0][3] = displayColor.GS;
  //displayBoard[0][4] = displayColor.GS;
  //displayBoard[1][4] = displayColor.GS;
  //displayBoard[1][5] = displayColor.GS;
  
  //displayBoard[19][3] = displayColor.S;
  //displayBoard[19][4] = displayColor.S;
  //displayBoard[20][4] = displayColor.S;
  //displayBoard[20][5] = displayColor.S;
  
  testPiece = new piece('T');
}



void draw() {
  background(0);
  
  float arr = 16.66667;
  float das = 100;
  
  //fill(255);
  //text("S: " + keyDuration.get("s"), 50, 50);
  //if (keyDuration.get("s") != null && keys.get("s")) {
  //  println("Factor: " + (keyDuration.get("s") - das / mspf));
  //  println("With %: " + (keyDuration.get("s") - das / mspf) % (arr / mspf));
    
  //  if ((keyDuration.get("s") - das / mspf) % ((int) (arr / mspf)) == 0) {
  //    println("Hit");
  //  }
  //}
  
  //for (Map.Entry keyElement : keys.entrySet()) {
  //  if (keyElement.getValue() == Boolean.TRUE)
  //  println(keyElement.getKey());
  //}
  
  if (keyDuration.get("s") != null && (keyDuration.get("s") == 1 || ((keyDuration.get("s") - das / mspf) >= 0 && (keyDuration.get("s") - das / mspf) % ((int) (arr / mspf)) == 0)))
    testPiece.moveDown();
  if (keyDuration.get("a") != null && (keyDuration.get("a") == 1 || ((keyDuration.get("a") - das / mspf) >= 0 && (keyDuration.get("a") - das / mspf) % ((int) (arr / mspf)) == 0)))
    testPiece.moveLeft();
  if (keyDuration.get("d") != null && (keyDuration.get("d") == 1 || ((keyDuration.get("d") - das / mspf) >= 0 && (keyDuration.get("d") - das / mspf) % ((int) (arr / mspf)) == 0)))
    testPiece.moveRight();
  if (keyDuration.get("w") != null && (keyDuration.get("w") == 1 || ((keyDuration.get("w") - das / mspf) >= 0 && (keyDuration.get("w") - das / mspf) % ((int) (arr / mspf)) == 0)))
    testPiece.moveUp();
  //if (keyDuration.get("37") != null && keyDuration.get("37") == 1)
    //nothin
  if (keyDuration.get("39") != null && keyDuration.get("39") == 1)
    testPiece.rotateCW();
  
  
  testPiece.display();
  
  keyDurationUpdate();
  keyTestDraw();
  drawBoard();
}
