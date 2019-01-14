  void thingsInDraw(){
//println ("Mousex:", mouseX, "\tMouseY:", mouseY);
  
  if (turn%2 == 0) {
   xo(x, position);
  } else {
   xo(o, position);
  }
  if(xScore > 9 || oScore > 9){
    xScore = 0;
    oScore = 0;
  }  if(winX == true){
    rect(width*81/240,height*27/240,width*40/240,height*19/240);//score for x
    xScore++;
    toContinue = true;
     for(int i = 0; i < 9; i++){
    noDraw[i] = true;
     }
     winX = false;

  }if(winO == true){
    rect(width*174/240,height*27/240,width*40/240,height*19/240);//score for O
    oScore++;
    toContinue = true;
    for(int i = 0; i < 9; i++){
    noDraw[i] = true;
     }
     winO = false;

  }
}
