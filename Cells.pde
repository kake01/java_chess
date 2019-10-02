class Cells
{
  private Cell[][] cell;
  private final int WHITE_CHESSMAN = 1;
  private final int BLACK_CHESSMAN = -1;
  private final int NUM_NOT_CHESSMAN = 0;
  private final int CELL_SIZE = 125;
  //駒の種類    pawn:0,rook:1,knight;2,bishop:3,queen;4,king;5
  private final String[] CHESSMAN_TYPE = {"1", "2", "3", "4", "5", "3", "2", "1"};
  public int turn = 1;

  public Cells()
  {
    cell = new Cell[8][8];
    for (int i = 0; i <cell.length; i++)
    {
      for (int j = 0; j < cell.length; j++)
      {
        if (i == 0) 
          cell[i][j] = new Cell(j, i, BLACK_CHESSMAN, "black_" + CHESSMAN_TYPE[j]);
        else if (i == 1)
          cell[i][j] = new Cell(j, i, BLACK_CHESSMAN, "black_0");
        else if (i == 6) 
          cell[i][j] = new Cell(j, i, WHITE_CHESSMAN, "white_0");
        else if (i == 7) 
          cell[i][j] = new Cell(j, i, WHITE_CHESSMAN, "white_" + CHESSMAN_TYPE[j]);
        else
          cell[i][j] = new Cell(i, j, NUM_NOT_CHESSMAN, "null");
      }
    }
  }

  public void MouseClick(int mouse_x, int mouse_y)
  {
    cell[mouse_y/CELL_SIZE][mouse_x/CELL_SIZE].chessman.MovePossibleShow(cell, mouse_x, mouse_y, turn);
  }

  public void Display()
  {
    for (int i = 0; i <8; i++)
      for (int j = 0; j < 8; j++)
        if (cell[j][i].chessman_num != 0)
          cell[j][i].chessman.Display(CELL_SIZE);
  }
}
