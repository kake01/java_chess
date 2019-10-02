class Chessman
{
  protected final int NO_CONDITION = 4;
  public int[][] conditions;
  private int pos_x, pos_y;
  private PImage chessman_img;
  private int[][] search_condition;
  protected color is_select_color;
  public PVector[] move_pos;
  private PVector[] find_pos;
  protected ArrayList<PVector> exist_chessman;

  ////chessmanには不要なもの
  protected final int CELL_MIN = 0;
  protected final int CELL_MAX = 7;
  protected final int NUM_NOT_CHESSMAN = 0;

  public Chessman(int cel_x, int cel_y, String koma_img)
  {
    this.pos_x = cel_x;
    this.pos_y = cel_y;
    this.exist_chessman = new ArrayList<PVector>();
    this.find_pos = new PVector[] 
      {
      //↑,↗.↘.→.↓.↙.←,↖
      new PVector(0, -1), new PVector(1, -1), 
      new PVector(1, 0), new PVector(1, 1), 
      new PVector(0, 1), new PVector(-1, 1), 
      new PVector(-1, 0), new PVector(-1, -1)
    };
    if (koma_img != "null")
      this.chessman_img = loadImage(koma_img + ".png");
  }

  public void Display(int radius)
  {
    image(chessman_img, pos_x, pos_y, radius, radius);
  }

  //移動可能範囲の表示
  public void MovePossibleShow(Cell[][] board_status, int is_position_x, int is_position_y, int turn)
  {
    fill(125, 125, 125);
    ellipse(is_position_x, is_position_y, 125, 125);
    //is_select_color = GetComponent<Renderer>().material.color;
    // this.GetComponent<Renderer>().material.color = Color.red;
    //this.gameObject.GetComponent<BoxCollider>().enabled = false;
  }













  private void ChessmanMove(int move_x, int move_y)
  {
    this.pos_x = move_x;
    this.pos_y = move_y;
  }

  public ArrayList<PVector> FindChessman(int turn, int[][] board_state)
  {
    this.search_condition = new int[][] {
      //NO_CONDITIONは条件なしで通る
      //↑,↗,→,↘,↓,←,↙,↖,,↗
      {pos_y - 1, NO_CONDITION, NO_CONDITION, NO_CONDITION}, //↑
      {pos_y - 1, pos_x + 1, NO_CONDITION, NO_CONDITION}, //,↗
      {NO_CONDITION, pos_x + 1, NO_CONDITION, NO_CONDITION}, //→
      {NO_CONDITION, pos_x + 1, pos_y + 1, NO_CONDITION}, //↘
      {NO_CONDITION, NO_CONDITION, pos_y + 1, NO_CONDITION}, //↓
      {NO_CONDITION, NO_CONDITION, pos_y + 1, pos_x - 1}, //↙
      {NO_CONDITION, NO_CONDITION, NO_CONDITION, pos_x - 1}, //←
      {pos_y - 1, NO_CONDITION, NO_CONDITION, pos_x - 1}//↖
    };
    //ここに色を戻す処理を書く
    //    exist_chessman.Clear();
    println("オブジェクトを元の色に戻します");

    //移動範囲の数だけ
    for (int chess_num = 0; chess_num < find_pos.length; chess_num++)
    {
      if (turn * board_state[pos_y][pos_x] > NUM_NOT_CHESSMAN)
      {
        if (CELL_MIN <= search_condition[chess_num][0] && search_condition[chess_num][1] <= CELL_MAX && search_condition[chess_num][2] <= CELL_MAX && CELL_MIN <= search_condition[chess_num][3])
        {
          if (turn * board_state[pos_y + (int)find_pos[chess_num].y][pos_x + (int)find_pos[chess_num].x] < NUM_NOT_CHESSMAN)
            exist_chessman.add(new PVector(pos_x + (int)find_pos[chess_num].x, pos_y + (int)find_pos[chess_num].y));
        }
      }
    }
    return exist_chessman;
  }

  public void ChessmanDestroy(int destroy_pos_x, int destroy_pos_y)
  {
    if (this.pos_x == destroy_pos_x && this.pos_y == destroy_pos_y)
    {
      //      Destroy(this.);
      println("オブジェクトを破壊したいです。");
    }
  }

  public void ResetColor() {
    //this.GetComponent<Renderer>().material.color = is_select_color;
    println("選択状態の色にする");
  }



  //public virtual void NoneRenderer() => photonView.RPC("FalseRenderer", PhotonTargets.Others);
  //public virtual void DisplayRenderer(PVector disp_pos) => photonView.RPC("TrueRender", PhotonTargets.Others, disp_pos);
  //[PunRPC]
  //public void FalseRenderer() => this.GetComponent<Renderer>().enabled = false;
  //[PunRPC]
  public void TrueRender(PVector render_pos)
  {
    //pos_y = -(int)this.transform.position.z / CELL_LENGTH;
    //pos_x = (int)this.transform.position.x / CELL_LENGTH;
    if (pos_x == render_pos.x && this.pos_y == render_pos.y)
      println("レンダーをtrueにします。");
    //this.GetComponent<Renderer>().enabled = true;
  }
}
