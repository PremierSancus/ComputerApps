void moves(int xOne,int yOne,int xTwo,int yTwo){
  if(turn % 2 == 0){
  textDraw("O: ",arial,height,CENTER,CENTER, xOne,yOne,xTwo,yTwo);
  textDraw(movePositions[position],arial,height,CENTER,CENTER,xOne,yOne,xTwo,yTwo);
  }
  else{
  textDraw("X: ",arial,height,CENTER,CENTER, xOne,yOne,xTwo,yTwo);
  textDraw(movePositions[position],arial,height,CENTER,CENTER,xOne,yOne,xTwo,yTwo);
  }
}
