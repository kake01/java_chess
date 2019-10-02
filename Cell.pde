class Cell 
{
  private int CELL_SIZE = 125;
  private int pos_x, pos_y;
  private int chessman_num;
  public Chessman chessman;
  //  protected Plane plane;

  public Cell(int row, int column, int koma_num, String koma_type)
  {
    pos_x = row * CELL_SIZE;
    pos_y = column * CELL_SIZE;
    chessman_num = koma_num;
    chessman = new Chessman(row * CELL_SIZE, column * CELL_SIZE, koma_type);
  }

  /*
   ⑥Cellクラスに、セル座標の割り出し処理を追加します。
   　ClickManagerから、クリックしたセルを割り出すため、⑤の逆で、渡された値をCELL_SIZEで割る処理を追加します。
   ⑦Chessmanクラスから、移動ベクトル・色・駒種を取得します。
   　Board>Cell>Chessmanの順に問い合わせて、最終的に結果がBoardに帰ります。
   　次に、Boardクラスに移動可能場所を探す処理を追加します。帰って来た、移動ベクトルを使って、順々に調べていきます。
   　この方法なら、Boardの状態をChessmanに知らせる必要がありませんし、ループ回数も1回で済みます。
   ⑧Boardクラスに、Cellが移動可能かを判定する処理を追加します。
   　Board>Cell>Chessmanの順に問い合わせて、ClickManagerで示したCellのChessmanが、プレイヤーのものか調べます。
   　次に、先程の⑥の処理を行います。調べる条件は、「盤上の範囲内であること」「駒がないこと」です。
   　盤上の範囲は、当然Boardが知っていますし、Board>Cellの順に問い合わせれば、Chessmanがあるかどうかも分かります。
   　これで、CELL_MIN・CELL_MAX・NUM_NOT_CHESSMANが消えました。
   ⑨Cellクラスに、Planeを置く処理を移行します。Boardからその処理が呼び出されたら、自身のPlaneを有効化します。
   ⑩Boardクラスに、ChessmanのCell移動処理を追加します。
   　ClickManagerで移動先を指定したら、⑥の処理でCellを割り出して、移動元のChessmanを移行します。
   　Cellに全てのPlaneを解除させて、ターン終了になります。
   */
}
