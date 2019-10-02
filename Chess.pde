public Board board;
private boolean is_select_time = false;

void setup() {
  size(1000, 1000);
  board = new Board();
}

void draw() 
{
  board.cells.Display();
}


void mousePressed()
{
  //board.cells.MouseClick(int(mouseX), int(mouseY));
  // if (Input.GetMouseButtonDown(0))
  //{/
  if (!is_select_time)
    board.cells.MouseClick(int(mouseX), int(mouseY));    
  //else
  // IsSelectTime();
}
//}






/*

 public void IsNotSelectTime()
 {
 //first_ray = Camera.main.ScreenPointToRay(Input.mousePosition);
 //first_hit = new RaycastHit();
 ////マウスクリックした場所にRayを飛ばし、オブジェクトがあるか
 //if (Physics.Raycast(first_ray.origin, first_ray.direction, out first_hit, Mathf.Infinity))
 //{
 //  //Vector3 worldDir = first_hit.transform.position;
 //  //boardの二次元座標に変換
 //  //select_y = -(int)worldDir.z / CELL_LENGTH;
 //  //select_x = (int)worldDir.x / CELL_LENGTH;
 //  board.gameObject.GetComponent<Board>().ChessmanMoveShow(first_hit, (int)first_hit.transform.position.x, (int)first_hit.transform.position.z);
 //  is_select_time = true;
 }
 
 public void IsSelectTime()
 {
 second_hit = new RaycastHit();
 second_ray = Camera.main.ScreenPointToRay(Input.mousePosition);
 
 //マウスをクリックしその場所に板が生成されていたら
 if (Physics.Raycast(second_ray.origin, second_ray.direction, out second_hit, Mathf.Infinity) && second_hit.collider.tag == "TargetTag")
 {
 // Vector3 plan = second_hit.transform.position;
 //move_pos_y = -(int)plan.z / CELL_LENGTH;
 //move_pos_x = (int)plan.x / CELL_LENGTH;
 board.gameObject.GetComponent<Board>().ChessmanMove(first_hit, (int)second_hit.transform.position.x, (int)second_hit.transform.position.z, (int)first_hit.transform.position.x, (int)first_hit.transform.position.z);
 }
 
 //選択状態での変更を戻す
 first_hit.collider.gameObject.GetComponent<Chessman>().PlaneDestroy();
 first_hit.collider.gameObject.GetComponent<Chessman>().ResetColor();
 first_hit.collider.gameObject.GetComponent<BoxCollider>().enabled = true;
 is_select_time = false;
 }
 
 
 
 */
