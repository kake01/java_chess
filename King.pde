class King extends Chessman
{
  public King(int pos_x, int pos_y, String koma_img)
  {
    super(pos_x, pos_y, koma_img);
    //↑,↗,→,↘,↓,←,↙,↖,,↗
    this.move_pos = new PVector[] {
      new PVector(0, -1), new PVector(1, -1), 
      new PVector(1, 0), new PVector(1, 1), 
      new PVector(0, 1), new PVector(-1, 1), 
      new PVector(-1, 0), new PVector(-1, -1)
    };
  }

  public void NoneRenderer()
  {
  }

  public void MovePossibleShow(Cell[][] board_state, int is_position_x, int is_position_y, int turn)
  {
    super.MovePossibleShow(board_state, is_position_x, is_position_y, turn);
    /*
    //それぞれの移動先が可能かどうかの判定リスト
     this.conditions = new int[][]
     {
     //↑,↗,→,↘,↓,←,↙,↖,,↗
     {is_position_y - 1, NO_CONDITION, NO_CONDITION, NO_CONDITION}, 
     {is_position_y - 1, is_position_x + 1, NO_CONDITION, NO_CONDITION}, 
     {NO_CONDITION, is_position_x + 1, NO_CONDITION, NO_CONDITION}, 
     {NO_CONDITION, is_position_x + 1, is_position_y + 1, NO_CONDITION}, 
     {NO_CONDITION, NO_CONDITION, is_position_y + 1, NO_CONDITION}, 
     {NO_CONDITION, NO_CONDITION, is_position_y + 1, is_position_x - 1}, 
     {NO_CONDITION, NO_CONDITION, NO_CONDITION, is_position_x - 1}, 
     {is_position_y - 1, NO_CONDITION, NO_CONDITION, is_position_x - 1}
     };
     
     //移動範囲の数だけ
     for (int chess_num = 0; chess_num < move_pos.length; chess_num++)
     {
     //条件↑,→,↓,←の順番
     if (CELL_MIN <= conditions[chess_num][0] && conditions[chess_num][1] <= CELL_MAX && conditions[chess_num][2] <= CELL_MAX && CELL_MIN <= conditions[chess_num][3])
     if (turn * board_state[is_position_y + (int)move_pos[chess_num].y][is_position_x + (int)move_pos[chess_num].x] <= NUM_NOT_CHESSMAN)
     println("移動可能場所に板を生成します。");
     //Plane.GetComponent<PositionGenerator>().Move_Possible_Plane(is_position_x + (int)move_pos[chess_num].x, is_position_y + (int)move_pos[chess_num].y);
     }
     */
  }
}
