  void thingsInDraw(){
  println ("Mousex:", mouseX, "\tMouseY:", mouseY);
  if (mouseX>width*196/240 && mouseX<width && mouseY>0 && mouseY<height*20/240) { //Hover Over
    fill(hoverOverButton);
    rect(width*196/240,height*2/240,width*40/240,height*18/240);
  } else {
    fill(regularButton);
    rect(width*196/240,height*2/240,width*40/240,height*18/240);
  }
  
  if (mouseX>width*148/240 && mouseX<width*188/240 && mouseY>height*2/240 && mouseY<height*20/240){
    fill(hoverOverButton);
    rect(width*148/240,height*2/240,width*40/240,height*18/240);
  } else {
    fill(regularButton);
    rect(width*148/240,height*2/240,width*40/240,height*18/240);
  }
  
  if (mouseX>width*100/240 && mouseX<width*140/240 && mouseY>height*2/240 && mouseY<height*20/240){
    fill(hoverOverButton);
    rect(width*100/240,height*2/240,width*40/240,height*18/240);//restart button rectangle
  } else {
    fill(regularButton);
    rect(width*100/240,height*2/240,width*40/240,height*18/240);//restart button rectangle
  }
  
   if (mouseX>width*52/240 && mouseX<width*92/240 && mouseY>height*2/240 && mouseY<height*20/240){
    fill(hoverOverButton);
    rect(width*52/240,height*2/240,width*40/240,height*18/240);//player 1 button rectangle
  } else {
    fill(regularButton);
    rect(width*52/240,height*2/240,width*40/240,height*18/240);//player 1 button rectangle
  }
  
   if (mouseX>width*4/240 && mouseX<width*44/240 && mouseY>height*2/240 && mouseY<height*20/240){
    fill(hoverOverButton);
    rect(width*4/240,height*2/240,width*40/240,height*18/240);//screenshot button rectangle  } 
  } else {
    fill(regularButton);
    rect(width*4/240,height*2/240,width*40/240,height*18/240);//screenshot button rectangle  
  }
  
  if (mouseX>width*4/240 && mouseX<width*44/240 && mouseY>height*30/240 && mouseY<height*90/240){
    fill(hoverOverButton);
    rect(width*4/240,height*30/240,width*40/240,height*60/240);//Easy button
  } else {
    fill(regularButton);
    rect(width*4/240,height*30/240,width*40/240,height*60/240);//Easy button
  }
  
   if (mouseX>width*4/240 && mouseX<width*44/240 && mouseY>height*102/240 && mouseY<height*162/240){
    fill(hoverOverButton);
    rect(width*4/240,height*102/240,width*40/240,height*60/240);//Hard button
  } else {
    fill(regularButton);
    rect(width*4/240,height*102/240,width*40/240,height*60/240);//Hard button
  }
  
   if (mouseX>width*4/240 && mouseX<width*44/240 && mouseY>height*174/240 && mouseY<height*234/240){
    fill(hoverOverButton);
    rect(width*4/240,height*174/240,width*40/240,height*60/240);//Impossible button
  } else {
    fill(regularButton);
    rect(width*4/240,height*174/240,width*40/240,height*60/240);//Impossible button
  }
  
   if (mouseX>width*96/240 && mouseX<width*144/240 && mouseY>height*96/240 && mouseY<height*144/240){
    fill(whiteButton);
     rect(width*96/240,height*96/240,width*48/240,height*48/240);//box 7
  } else {
    fill(regularButton);
    rect(width*96/240,height*96/240,width*48/240,height*48/240);//box 7
  }
  
   if (mouseX>width*144/240 && mouseX<width*192/240 && mouseY>height*96/240 && mouseY<height*144/240){
    fill(whiteButton);
    rect(width*144/240,height*96/240,width*48/240,height*48/240);//box 8
  } else {
    fill(regularButton);
    rect(width*144/240,height*96/240,width*48/240,height*48/240);//box 8
  }
  
   if (mouseX>width*192/240 && mouseX<width && mouseY>height*96/240 && mouseY<height*144/240){
    fill(whiteButton);
    rect(width*192/240,height*96/240,width*48/240,height*48/240);//box 9
  } else {
    fill(regularButton);
    rect(width*192/240,height*96/240,width*48/240,height*48/240);//box 9
  }
  
   if (mouseX>width*96/240 && mouseX<width*144/240 && mouseY>height*144/240 && mouseY<height*192/240){
    fill(whiteButton);
    rect(width*96/240,height*144/240,width*48/240,height*48/240);//box 4
  } else {
    fill(regularButton);
    rect(width*96/240,height*144/240,width*48/240,height*48/240);//box 4
  }
  
   if (mouseX>width*144/240 && mouseX<width*192/240 && mouseY>height*144/240 && mouseY<height*192/240){
   fill(whiteButton);
   rect(width*144/240,height*144/240,width*48/240,height*48/240);//box 5
  } else {
   fill(regularButton);
   rect(width*144/240,height*144/240,width*48/240,height*48/240);//box 5
  }
  
   if (mouseX>width*192/240 && mouseX<width && mouseY>height*144/240 && mouseY<height*192/240){
   fill(whiteButton);
   rect(width*192/240,height*144/240,width*48/240,height*48/240);//box 6
  } else {
    fill(regularButton);
    rect(width*192/240,height*144/240,width*48/240,height*48/240);//box 6
  }
  
   if (mouseX>width*96/240 && mouseX<width*144/240 && mouseY>height*192/240 && mouseY<height){
    fill(whiteButton);
    rect(width*96/240,height*192/240,width*48/240,height*48/240);//box 1
  } else {
    fill(regularButton);
    rect(width*96/240,height*192/240,width*48/240,height*48/240);//box 1
  }
  
   if (mouseX>width*144/240 && mouseX<width*192/240 && mouseY>height*192/240 && mouseY<height){
   fill(whiteButton);
   rect(width*144/240,height*192/240,width*48/240,height*48/240);//box 2
  } else {
    fill(regularButton);
    rect(width*144/240,height*192/240,width*48/240,height*48/240);//box 2
  } 
  
   if (mouseX>width*192/240 && mouseX<width && mouseY>height*192/240 && mouseY<height){
   fill(whiteButton);
   rect(width*192/240,height*192/240,width*48/240,height*48/240);//box 3
  } else {
    fill(regularButton);
    rect(width*192/240,height*192/240,width*48/240,height*48/240);//box 3
  }
  
  fill(#FFDA03); //Yellow Ink, copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: LEFT | CENTER | RIGHT & TOP | CENTER | BOTTOM | BASELINE
  textFont(arial, 35); //Change the number until it fits, largest font size
  text(quit,width*196/240,height*2/240,width*40/240,height*18/240);
  text(playerOne,width*52/240,height*2/240,width*40/240,height*18/240);
  text(playerTwo,width*148/240,height*2/240,width*40/240,height*18/240);
  text(restart,width*100/240,height*2/240,width*40/240,height*18/240);
  text(screenshot,width*4/240,height*2/240,width*40/240,height*18/240);
  text(moves, width*56/240,height*81/240,width*36/240,height*20/240);
  textFont(algerian, 55);
  text(easy,width*4/240,height*30/240,width*40/240,height*60/240);
  text(hard,width*4/240,height*102/240,width*40/240,height*60/240);
  textFont(algerian,33);
  text(impossible,width*4/240,height*174/240,width*40/240,height*60/240);
  textFont(arial,33);
  textAlign (LEFT,CENTER);
  text(x,width*66/240,height*24/240,width*80/240,height*25/240);
  text(o,width*158/240,height*24/240,width*80/240,height*25/240);
  textAlign(CENTER,CENTER);
  text(str(xScore), width*81/240,height*27/240,width*40/240,height*19/240);
  text(str(oScore), width*174/240,height*27/240,width*40/240,height*19/240);
  if (turn%2 == 0) {
   xo(o, position);
  } else {
   xo(x, position);
  }
}
