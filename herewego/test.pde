public piece testPiece;

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
        tiles[1] = new tile(row, col - 1);
        tiles[2] = new tile(row, col);
        tiles[3] = new tile(row, col + 1);
        
        break;
    }
  }
  
  
  
  public void display() {
    for (tile i : tiles) {
      displayBoard[i.getRow()][i.getCol()] = this.dc;
      //println(i.getRow() + ", " + i.getCol());
    }
  }
  
  
  
  public void rotateCW() {
    boolean canRot = true;
    for (tile i : tiles) {
      int r = i.getRow() + (i.getCol() - this.col);
      int c = i.getCol() - (i.getRow() - this.row);
      println("(" + c + ", " + r + ")");
      
      //if (r >= 0 && r <= boardHeight - 1 && c >= 0 && c <= boardWidth - 1)
      //  canRot &= board[r][c] != 1;
      //else {
      //  println("failed");
      //  canRot = false;
      //}
    }
    
    if (canRot) {
      println("test passed");
      for (tile i : tiles)
        displayBoard[i.getRow()][i.getCol()] = null;
      for (tile i : tiles) {
        i.setRow(i.getCol());
        i.setCol(-i.getRow());
      }
    }
    println("========");
  }
  
  
  
  // Test function
  public void moveUp() {
    boolean canMove = true;
    for (tile i : tiles) {
      if (i.getRow() != displayBoardHeight - 1)
        canMove &= board[i.getRow() + 1][i.getCol()] != 1;
      else
        canMove = false;
    }
    
    if (canMove) {
      for (tile i : tiles)  
        displayBoard[i.getRow()][i.getCol()] = null;
      for (tile i : tiles)
        i.setRow(i.getRow() + 1);
    }
    
    this.row += 1;
  }
  
  public void moveDown() {
    boolean canMove = true;
    for (tile i : tiles) {
      if (i.getRow() != 0)
        canMove &= board[i.getRow() - 1][i.getCol()] != 1;
      else
        canMove = false;
    }
    
    if (canMove) {
      for (tile i : tiles)  
        displayBoard[i.getRow()][i.getCol()] = null;
      for (tile i : tiles)
        i.setRow(i.getRow() - 1);
    }
    
    this.row -= 1;
  }
  
  public void moveLeft() {
    boolean canMove = true;
    for (tile i : tiles) {
      if (i.getCol() != 0)
        canMove &= board[i.getRow()][i.getCol() - 1] != 1;
      else
        canMove = false;
    }
    
    if (canMove) {
      for (tile i : tiles)  
        displayBoard[i.getRow()][i.getCol()] = null;
      for (tile i : tiles)
        i.setCol(i.getCol() - 1);
    }
    
    this.col -= 1;
  }
  
  public void moveRight() {
    boolean canMove = true;
    for (tile i : tiles) {
      if (i.getCol() != boardWidth - 1)
        canMove &= board[i.getRow()][i.getCol() + 1] != 1;
      else
        canMove = false;
    }
    
    if (canMove) {
      for (tile i : tiles)  
        displayBoard[i.getRow()][i.getCol()] = null;
      for (tile i : tiles)
        i.setCol(i.getCol() + 1);
    }
    
    this.col += 1;
  }
}
