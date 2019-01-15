void ISINTMC() {
  if (mouseX>width*196/240 && mouseX<width*236/240 && mouseY>0 && mouseY<height*20/240) {
    exit();//quit
  }
  if (toContinue == true){
    if(mouseX>width*96/240 && mouseX<width && mouseY>height*55/240 && mouseY<height*85/240) {
      ContinueButton();
      resetThings();
      toContinue = false;
    }
  }
  if (mouseX>width*100/240 && mouseX<width*140/240 && mouseY>height*2/240 && mouseY<height*20/240){
    reset();
  }
  if (mouseX>width*148/240 && mouseX<width*188/240 && mouseY>height*2/240 && mouseY<height*20/240){
    playWithAI = false; // player 2
    EasyAI = false;
    HardAI = false;
    ImpossibleAI = false;
    reset();
  }
  if (mouseX>width*52/240 && mouseX<width*92/240 && mouseY>height*2/240 && mouseY<height*20/240){
    playWithAI = true;// player 1
    EasyAI = true;
    HardAI = false;
    ImpossibleAI = false;
    reset();
  }
  if (mouseX>width*4/240 && mouseX<width*44/240 && mouseY>height*30/240 && mouseY<height*90/240){//easy AI
   EasyAI = true;
   playWithAI = true;
   HardAI = false;
   ImpossibleAI = false;
   reset();
  }
  if (mouseX>width*4/240 && mouseX<width*44/240 && mouseY>height*102/240 && mouseY<height*162/240){ //hard AI
   EasyAI = false;
   playWithAI = true;
   HardAI = true;
   ImpossibleAI = false;
   reset();
  }
  if (mouseX>width*4/240 && mouseX<width*44/240 && mouseY>height*174/240 && mouseY<height*234/240){//Impossible AI
   EasyAI = false;
   playWithAI = true;
   HardAI = false;
   ImpossibleAI = true;
   reset();

  }
}
