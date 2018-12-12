void moves(int xOne,int yOne,int xTwo,int yTwo){
  if(turn % 2 == 0){
  textDraw(movePositions[position],arial,height,CENTER,CENTER,xOne,yOne,xTwo,yTwo);
  boardPiece[(position-1)] = "X";
  onlyX();
  println(onlyXPiece[0], boardPiece[0]);
  println(onlyXPiece[1], boardPiece[1], trigger[1]);
  println(onlyXPiece[2], boardPiece[2]);
  println(onlyXPiece[3], boardPiece[3], trigger[1]);
  println(onlyXPiece[4], boardPiece[4], trigger[1]);
  println(onlyXPiece[5], boardPiece[5], trigger[1]);
  println(onlyXPiece[6], boardPiece[6]);
  println(onlyXPiece[7], boardPiece[7], trigger[1]);
  println(onlyXPiece[8], boardPiece[8]);
  println("END of XPIECE");
  }
  else{
  textDraw(movePositions[position],arial,height,CENTER,CENTER,xOne,yOne,xTwo,yTwo);
  boardPiece[position-1] = "O";
  onlyO();
  println(onlyOPiece[0], boardPiece[0]);
  println(onlyOPiece[1], boardPiece[1]);
  println(onlyOPiece[2], boardPiece[2]);
  println(onlyOPiece[3], boardPiece[3]);
  println(onlyOPiece[4], boardPiece[4]);
  println(onlyOPiece[5], boardPiece[5]);
  println(onlyOPiece[6], boardPiece[6]);
  println(onlyOPiece[7], boardPiece[7]);
  println(onlyOPiece[8], boardPiece[8]);
  println("END of OPIECE");
  }
}
