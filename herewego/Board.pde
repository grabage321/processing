int boardHeight = 40;
int boardWidth = 10;
displayColor[][] board = new displayColor[boardHeight][boardWidth];




void drawBoard() {
  for (int i = 0; i < boardHeight / 2 + 1; i++) {
    for (int j = 0; j < boardWidth; j++) {
      rectMode(CENTER);
      
      // Draw square if square exists
      if (board[i][j] != null) {
        fill(board[i][j].getR(), board[i][j].getG(), board[i][j].getB(), board[i][j].getA());
        noStroke();
        rect(330 + j * 30, 670 - i * 30, 30, 30);
      }
      
      // Draw points at center of all cells
      strokeWeight(5);
      stroke(255);
      point(330 + j * 30, 670 - i * 30);
    }
  }  
}
