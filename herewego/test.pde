public class piece {
  public int row;
  public int col;
  public int rot;
  public displayColor dc;
  private tile[] tiles = new tile[4];
  
  
  
  public piece(char type) {
    switch (type) {
      case 't':
      case 'T':
        //  a
        // bCd
        // 
        
        this.row = 20;
        this.col = 4;
        this.rot = 0;
        
        this.dc = displayColor.T;
        
        tiles[0] = new tile(row + 1, col);
        tiles[0] = new tile(row, col - 1);
        tiles[0] = new tile(row, col);
        tiles[0] = new tile(row, col + 1);
        
        break;
    }
  }
  
  
  
  public void displayPiece() {
    for (int i : tiles) {
      displayBoard[tiles[i].getRow()][tiles[i].getCol()] = this.dc;
    }
  }
  
  public void moveDown() {
    boolean canMove = true;
    for (int i : tiles) {
      canMove &= board[tiles[i].getRow() - 1][tiles[i].getCol()] == 1;
    }
  }
}
