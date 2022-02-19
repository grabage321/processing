void setup() {
  size(960, 720);
  
  keyInit();
  
  board[0][9] = displayColor.I;
  board[1][9] = displayColor.I;
  board[2][9] = displayColor.I;
  board[3][9] = displayColor.I;
  
  board[0][0] = displayColor.T;
  board[0][1] = displayColor.T;
  board[0][2] = displayColor.T;
  board[1][1] = displayColor.T;
  
  board[0][3] = displayColor.GS;
  board[1][2] = displayColor.GS;
  board[1][3] = displayColor.GS;
  board[2][2] = displayColor.GS;
  
  board[18][3] = displayColor.S;
  board[19][2] = displayColor.S;
  board[19][3] = displayColor.S;
  board[20][2] = displayColor.S;
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
