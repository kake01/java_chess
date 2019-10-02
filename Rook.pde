class Rook extends Chessman
{
  public Rook(int pos_x, int pos_y, String koma_img)
  {
    super(pos_x, pos_y, koma_img);
  }

  private int board_num;
  private final int TRIAL_NUM = 4;

  public void MovePossibleShow(Cell[][] board_state, int is_position_x, int is_position_y, int turn)
  {
    super.MovePossibleShow(board_state, is_position_x, is_position_y, turn);
    /*
    //移動の選択肢の数だけ
     for (int chess_num = 0; chess_num < TRIAL_NUM; chess_num++)
     {
     board_num = 1;
     
     //奥まで繰り返して行う
     while (0 <= 8 - board_num)
     {
     //それぞれの移動先が可能かどうかの判定リスト
     this.conditions = new int[][]
     {
     {is_position_y - board_num, NO_CONDITION, NO_CONDITION, NO_CONDITION}, //↑
     {NO_CONDITION, is_position_x + board_num, NO_CONDITION, NO_CONDITION}, //→
     {NO_CONDITION, NO_CONDITION, is_position_y + board_num, NO_CONDITION}, //↓
     {NO_CONDITION, NO_CONDITION, NO_CONDITION, is_position_x - board_num}//←
     };
     this.move_pos = new PVector[]
     {
     new PVector(0, -board_num), //↑
     new PVector(board_num, 0), //→
     new PVector(0, board_num), //↓
     new PVector(-board_num, 0)//←
     };
     
     //条件↑,→,↓,←の順番
     if (CELL_MIN <= conditions[chess_num][0] && conditions[chess_num][1] <= CELL_MAX && conditions[chess_num][2] <= CELL_MAX && CELL_MIN <= conditions[chess_num][3])
     {
     //移動可能場所に板を設置
     if (turn * board_state[is_position_y + (int)move_pos[chess_num].y][is_position_x + (int)move_pos[chess_num].x] <= NUM_NOT_CHESSMAN)
     println("板を生成します");
     //Plane.GetComponent<PositionGenerator>().Move_Possible_Plane(is_position_x + (int)move_pos[chess_num].x, is_position_y + (int)move_pos[chess_num].y);
     //敵の駒があったら
     if (turn * board_state[is_position_y + (int)move_pos[chess_num].y][is_position_x + (int)move_pos[chess_num].x] < NUM_NOT_CHESSMAN)
     break;
     //自分の駒があったら
     if (turn * board_state[is_position_y + (int)move_pos[chess_num].y][is_position_x + (int)move_pos[chess_num].x] > NUM_NOT_CHESSMAN)
     break;
     }
     board_num++;
     }
     }
     */
  }
}
