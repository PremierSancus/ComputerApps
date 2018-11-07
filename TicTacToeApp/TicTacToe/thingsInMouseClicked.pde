void thingsInMouseClicked(){
  if (mouseX>width*196/240 && mouseX<width*236/240 && mouseY>0 && mouseY<height*20/240) {
    exit();
  }
  if (mouseX>width*96/240 && mouseX<width*144/240 && mouseY>height*96/240 && mouseY<height*144/240){
   fill(#FFDA03); //Yellow Ink, copied from Color Selector
   textAlign (CENTER, CENTER);
   textFont(algerian, 55);
   text("X",width*96/240,height*96/240,width*48/240,height*48/240);//box 7

  }
}
