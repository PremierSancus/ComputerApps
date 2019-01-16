  void thingsInDraw(){
//println ("Mousex:", mouseX, "\tMouseY:", mouseY);
  
  if (turn%2 == 0) {
   xo(x, position);
  } else {
   xo(o, position);
  }

}
void POneTID(){
  if (turn%2 == 0) {
    if(EasyAI == true){
      EasyAITurn();
    }
   xo(x, position);
  }
  else{
    xo(x, position);
  }
  
}
