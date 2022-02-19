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
    for (tile i : tiles) {
      displayBoard[i.getRow()][i.getCol()] = this.dc;
    }
  }
  
  public void moveDown() {
    boolean canMove = true;
    for (tile i : tiles) {
      canMove &= board[i.getRow() - 1][i.getCol()] == 1;
    }
  }
}
