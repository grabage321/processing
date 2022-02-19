void setup() {
  size(960, 720);
  frameRate(360);
  
  keyInit();
  
  displayBoard[0][9] = displayColor.I;
  displayBoard[1][9] = displayColor.I;
  displayBoard[2][9] = displayColor.I;
  displayBoard[3][9] = displayColor.I;
  
  displayBoard[0][0] = displayColor.T;
  displayBoard[0][1] = displayColor.T;
  displayBoard[0][2] = displayColor.T;
  displayBoard[1][1] = displayColor.T;
  
  //displayBoard[0][3] = displayColor.GS;
  //displayBoard[0][4] = displayColor.GS;
  //displayBoard[1][4] = displayColor.GS;
  //displayBoard[1][5] = displayColor.GS;
  
  //displayBoard[19][3] = displayColor.S;
  //displayBoard[19][4] = displayColor.S;
  //displayBoard[20][4] = displayColor.S;
  //displayBoard[20][5] = displayColor.S;
  
  piece t = new piece('T');
}



void draw() {
  background(0);
  
  //for (Map.Entry keyElement : keys.entrySet()) {
  //  if (keyElement.getValue() == Boolean.TRUE)
  //    println(keyElement.getKey());
  //}
  
  keyTestDraw();
  drawBoard();
}
