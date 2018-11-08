void xoDraw(){
   if (noDraw[0] == false && mouseX>width*96/240 && mouseX<width*144/240 && mouseY>height*96/240 && mouseY<height*144/240) { //box 7
    position = 1;
    noDraw[0] = true;
    turn++;
  }
  if (noDraw[1] == false && mouseX>width*144/240 && mouseX<width*192/240 && mouseY>height*96/240 && mouseY<height*144/240) { //box 8
    position = 2;
    noDraw[1] = true;
    turn++;
  } 
  if (noDraw[2] == false && mouseX>width*192/240 && mouseX<width && mouseY>height*96/240 && mouseY<height*144/240) { //box 9
    position = 3;
    noDraw[2] = true;
    turn++;
  } 
  if (noDraw[3] == false && mouseX>width*96/240 && mouseX<width*144/240 && mouseY>height*144/240 && mouseY<height*192/240) { //box 4
    position = 4;
    noDraw[3] = true;
    turn++;
  } 
  if (noDraw[4] == false && mouseX>width*144/240 && mouseX<width*192/240 && mouseY>height*144/240 && mouseY<height*192/240) { //box 5
    position = 5;
    noDraw[4] = true;
    turn++;
  } 
  if (noDraw[5] == false && mouseX>width*192/240 && mouseX<width && mouseY>height*144/240 && mouseY<height*192/240) { // box 6
    position = 6;
    noDraw[5] = true;
   turn++;
  } 
  if (noDraw[6] == false && mouseX>width*96/240 && mouseX<width*144/240 && mouseY>height*192/240 && mouseY<height) { //box 1
    position = 7;
    noDraw[6] = true;
     turn++;
  } 
  if (noDraw[7] == false && mouseX>width*144/240 && mouseX<width*192/240 && mouseY>height*192/240 && mouseY<height) { //box 2
    position = 8;
    noDraw[7] = true;
    turn++;
  } 
  if (noDraw[8] == false && mouseX>width*192/240 && mouseX<width && mouseY>height*192/240 && mouseY<height) { //box 3
    position = 9;
    noDraw[8] = true;
    turn++;
  }
}
