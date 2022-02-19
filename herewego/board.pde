int boardHeight = 40;
int boardWidth = 10;
int displayBoardHeight = 22;

public displayColor[][] displayBoard = new displayColor[displayBoardHeight][boardWidth];
public byte[][] board = new byte[boardHeight][boardWidth];




void drawBoard() {
  float boardX = 480;
  float boardY = 670;
  float tileSize = 30;
  
  //line(480, 0, 480, 720);
  
  for (int i = 0; i <= displayBoardHeight; i++) {
    for (int j = 0; j <= boardWidth; j++) {
      strokeWeight(2);
      stroke(128);
      point((boardX - tileSize * ((boardWidth / 2.0) - 0.5) + j * tileSize) - tileSize / 2, (boardY - i * tileSize) + tileSize / 2);
    }
  }
  
  for (int i = 0; i < displayBoardHeight; i++) {
    for (int j = 0; j < boardWidth; j++) {
      rectMode(CENTER);
      
      // Draw square if square exists
      if (displayBoard[i][j] != null) {
        fill(displayBoard[i][j].getR(), displayBoard[i][j].getG(), displayBoard[i][j].getB(), displayBoard[i][j].getA());
        noStroke();
        rect(boardX - tileSize * ((boardWidth / 2.0) - 0.5) + j * tileSize, boardY - i * tileSize, tileSize, tileSize);
      }
      
      // Draw points at center of all cells
      //strokeWeight(5);
      //stroke(255);
      //point(boardX - tileSize * ((boardWidth / 2.0) - 0.5 ) + j * tileSize, boardY - i * tileSize);
    }
  }  
}
