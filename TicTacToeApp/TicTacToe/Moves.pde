void moves(int xOne,int yOne,int xTwo,int yTwo){
  if(turn % 2 == 0){
  textDraw(movePositions[position],arial,height,CENTER,CENTER,xOne,yOne,xTwo,yTwo);
  boardPiece[(position-1)] = "X";
  println(boardPiece[0]);
  println(boardPiece[1]);
  println(boardPiece[2]);
  println(boardPiece[3]);
  println(boardPiece[4]);
  println(boardPiece[5]);
  println(boardPiece[6]);
  println(boardPiece[7]);
  println(boardPiece[8]);
  println("END");
  }
  else{
  textDraw(movePositions[position],arial,height,CENTER,CENTER,xOne,yOne,xTwo,yTwo);
  boardPiece[position-1] = "O";
  println(boardPiece[0]);
  println(boardPiece[1]);
  println(boardPiece[2]);
  println(boardPiece[3]);
  println(boardPiece[4]);
  println(boardPiece[5]);
  println(boardPiece[6]);
  println(boardPiece[7]);
  println(boardPiece[8]);
  println("END");
  }
}
