void thingsInMouseClicked(){
  if (mouseX>width*196/240 && mouseX<width*236/240 && mouseY>0 && mouseY<height*20/240) {
    exit();
  }
   
  if (mouseX>width*96/240 && mouseX<width*144/240 && mouseY>96/240 && mouseY<144/240) {
    image (xpic,width*100/240,height*100/240,width*40/240,height*40/240);
      opic = loadImage("O.png"); //Dimensions: 259 Width, 194 Height
      xpic = loadImage("X.png"); //Dimensions: 860 Width, 529 Height
      image (xpic,width*100/240,height*100/240,width*40/240,height*40/240);
  }
}
