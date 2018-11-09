void moves(int xOne,int yOne,int xTwo,int yTwo){
  if(turn % 2 == 0){
  fill(yellow);
  textAlign(LEFT,CENTER);
  textFont(arial,15);
  text("O: ", xOne,yOne,xTwo,yTwo);
  textAlign(CENTER,CENTER);
  text(movePositions[position],xOne,yOne,xTwo,yTwo);
  }
  else{
  fill(yellow);
  textAlign(LEFT,CENTER);
  textFont(arial,15);
  text("X: ", xOne,yOne,xTwo,yTwo);
  textAlign(CENTER,CENTER);
  text(movePositions[position],xOne,yOne,xTwo,yTwo);
  }
}
