void moves(int xOne,int yOne,int xTwo,int yTwo){
  if(turn % 2 == 0){
  textDraw("X: ",arial,height,CENTER,CENTER, xOne,yOne,xTwo,yTwo);
  textDraw(movePositions[position],arial,height,CENTER,CENTER,xOne,yOne,xTwo,yTwo);
  boardPiece[(position-1)] = "X";
  println(boardPiece[(position -1)]);
  }
  else{
  textDraw("X: ",arial,height,CENTER,CENTER, xOne,yOne,xTwo,yTwo);
  textDraw(movePositions[position],arial,height,CENTER,CENTER,xOne,yOne,xTwo,yTwo);
  boardPiece[position-1] = "X";
  }
}
