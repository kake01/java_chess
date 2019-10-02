class Pawn extends Chessman
{
  private boolean is_first_move = true;

  public Pawn(int pos_x, int pos_y, String koma_img)
  {
    super(pos_x, pos_y, koma_img);
    println("pawn作成");
  }



  public void ChessmanMove(int move_x, int move_z)
  {
    super.ChessmanMove(move_x, move_z);
    if (is_first_move)
      is_first_move = false;
  }

  public void MovePossibleShow(Cell[][] board_state, int is_position_x, int is_position_y, int turn)
  {
    super.MovePossibleShow(board_state, is_position_x, is_position_y, turn);
    /*
    //初動のみ有効
     if (is_first_move && board_state[is_position_y - 2 * turn][is_position_x] == NUM_NOT_CHESSMAN && board_state[is_position_y - 1 * turn][is_position_x] == NUM_NOT_CHESSMAN)
     //移動板はboardが生成するので改良余地あり
     //Plane.GetComponent<PositionGenerator>().Move_Possible_Plane(is_position_x, is_position_y - 2 * turn);
     println("移動可能場所に板を生成します。");
     
     if (CELL_MIN <= is_position_y - 1 && is_position_y + 1 <= CELL_MAX)
     {
     //前に駒がなかったら
     if (board_state[is_position_y - 1 * turn][is_position_x] == NUM_NOT_CHESSMAN)
     {
     //移動板はboardが生成するので改良余地あり
     //Plane.GetComponent<PositionGenerator>().Move_Possible_Plane(is_position_x, is_position_y - 1 * turn);
     println("移動可能場所に板を生成します。");
     }
     //左に駒が合ったら
     if (CELL_MIN <= is_position_x - 1 && turn * board_state[is_position_y - 1 * turn][is_position_x - 1] < NUM_NOT_CHESSMAN)
     {
     //移動板はboardが生成するので改良余地あり
     //Plane.GetComponent<PositionGenerator>().Move_Possible_Plane(is_position_x - 1, is_position_y - 1 * turn);
     println("移動可能場所に板を生成します。");
     }
     //右に駒が合った
     if (is_position_x + 1 <= CELL_MAX && turn * board_state[is_position_y - 1 * turn][is_position_x + 1] < NUM_NOT_CHESSMAN)
     {
     //移動板はboardが生成するので改良余地あり         
     //Plane.GetComponent<PositionGenerator>().Move_Possible_Plane(is_position_x + 1, is_position_y - 1 * turn);
     println("移動可能場所に板を生成します。");
     }
     }
     */
  }
}
