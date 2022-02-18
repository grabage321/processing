void setup() {
  size(960, 720);
  
  keyInit();
  
  board[2][9] = displayColor.I;
  board[3][9] = displayColor.I;
  board[4][9] = displayColor.I;
  board[5][9] = displayColor.I;
  
  board[0][0] = displayColor.GS;
  board[0][1] = displayColor.GS;
  board[1][1] = displayColor.GS;
  board[1][2] = displayColor.GS;
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
