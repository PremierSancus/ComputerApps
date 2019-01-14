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
}
