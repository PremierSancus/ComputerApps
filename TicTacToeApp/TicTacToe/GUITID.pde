void GUITID(){
  if (mouseX>width*196/240 && mouseX<width && mouseY>0 && mouseY<height*20/240) { //Hover Over
    fill(hoverOverButton);
    rect(width*196/240,height*2/240,width*40/240,height*18/240);
  } else {
    fill(regularButton);
    rect(width*196/240,height*2/240,width*40/240,height*18/240);
  }
  //playwithAI stuff!!!
  if(playWithAI == true){
      fill(hoverOverButton);
      rect(width*52/240,height*2/240,width*40/240,height*18/240);//player 1 button rectangle
      if (mouseX>width*148/240 && mouseX<width*188/240 && mouseY>height*2/240 && mouseY<height*20/240){
      fill(hoverOverButton);
      rect(width*148/240,height*2/240,width*40/240,height*18/240); //player 2 button rectabgle
    } else {
      fill(regularButton);
      rect(width*148/240,height*2/240,width*40/240,height*18/240); //player 2 button rectabgle
    }
    if(EasyAI == true){
    fill(hoverOverButton);
    rect(width*4/240,height*30/240,width*40/240,height*60/240);//Easy button
    }
  if(HardAI == true){
    fill(hoverOverButton);
    rect(width*4/240,height*102/240,width*40/240,height*60/240);//Hard button
     }
  if(ImpossibleAI == true){
    fill(hoverOverButton);
    rect(width*4/240,height*174/240,width*40/240,height*60/240);//Impossible button
     }
   }
  if(playWithAI == false){
      fill(hoverOverButton);
      rect(width*148/240,height*2/240,width*40/240,height*18/240); //player 2 button rectabgle
      if (mouseX>width*52/240 && mouseX<width*92/240 && mouseY>height*2/240 && mouseY<height*20/240){
        fill(hoverOverButton);
        rect(width*52/240,height*2/240,width*40/240,height*18/240);//player 1 button rectangle
      } else {
        fill(regularButton);
        rect(width*52/240,height*2/240,width*40/240,height*18/240);//player 1 button rectangle
      }
  }if (mouseX>width*100/240 && mouseX<width*140/240 && mouseY>height*2/240 && mouseY<height*20/240){
    fill(hoverOverButton);
    rect(width*100/240,height*2/240,width*40/240,height*18/240);//restart button rectangle
  } else {
    fill(regularButton);
    rect(width*100/240,height*2/240,width*40/240,height*18/240);//restart button rectangle
  }
  
   if (mouseX>width*4/240 && mouseX<width*44/240 && mouseY>height*2/240 && mouseY<height*20/240){
    fill(hoverOverButton);
    rect(width*4/240,height*2/240,width*40/240,height*18/240);//screenshot button rectangle  } 
  } else {
    fill(regularButton);
    rect(width*4/240,height*2/240,width*40/240,height*18/240);//screenshot button rectangle  
  }
  if(EasyAI == false){
    if (mouseX>width*4/240 && mouseX<width*44/240 && mouseY>height*30/240 && mouseY<height*90/240){
      fill(hoverOverButton);
      rect(width*4/240,height*30/240,width*40/240,height*60/240);//Easy button
    } else {
      fill(regularButton);
      rect(width*4/240,height*30/240,width*40/240,height*60/240);//Easy button
    }
  }if(HardAI == false){
   if (mouseX>width*4/240 && mouseX<width*44/240 && mouseY>height*102/240 && mouseY<height*162/240){
    fill(hoverOverButton);
    rect(width*4/240,height*102/240,width*40/240,height*60/240);//Hard button
  } else {
    fill(regularButton);
    rect(width*4/240,height*102/240,width*40/240,height*60/240);//Hard button
  }}
   if(ImpossibleAI==false){
   if (mouseX>width*4/240 && mouseX<width*44/240 && mouseY>height*174/240 && mouseY<height*234/240){
    fill(hoverOverButton);
    rect(width*4/240,height*174/240,width*40/240,height*60/240);//Impossible button
  } else {
    fill(regularButton);
    rect(width*4/240,height*174/240,width*40/240,height*60/240);//Impossible button
  }}
   if (mouseX>width*96/240 && mouseX<width*240/240 && mouseY>height*55/240 && mouseY<height*85/240){
    fill(hoverOverButton);
    rect(width*96/240,height*55/240,width*144/240,height*30/240);//continue Button
  } else {
    fill(regularButton);
    rect(width*96/240,height*55/240,width*144/240,height*30/240);//Continue button
  }
  textDraw("Continue",arial,height,CENTER,CENTER,width*96/240,height*55/240,width*144/240,height*30/240);
  textDraw(playerOne,arial,height, CENTER,CENTER,width*52/240,height*2/240,width*40/240,height*18/240);
  textDraw(moves, arial,height,CENTER,CENTER,width*56/240,height*81/240,width*36/240,height*20/240);
  textDraw(playerTwo,arial,height,CENTER,CENTER,width*148/240,height*2/240,width*40/240,height*18/240);
  textDraw(restart,arial,height,CENTER,CENTER,width*100/240,height*2/240,width*40/240,height*18/240);
  textDraw(screenshot,arial, height, CENTER,CENTER,width*4/240,height*2/240,width*40/240,height*18/240);
  textDraw(quit, arial, height, CENTER, CENTER,width*196/240,height*2/240,width*40/240,height*18/240);
  textDraw(easy, algerian, height, CENTER, CENTER,width*4/240,height*30/240,width*40/240,height*60/240);
  textDraw(hard, algerian, height, CENTER, CENTER,width*4/240,height*102/240,width*40/240,height*60/240);
  textDraw(impossible, algerian, height, CENTER,CENTER,width*4/240,height*174/240,width*40/240,height*60/240);
  textDraw(x, arial, height, LEFT, CENTER,width*66/240,height*24/240,width*80/240,height*25/240);
  textDraw(o, arial, height, LEFT, CENTER,width*158/240,height*24/240,width*80/240,height*25/240);
  textDraw(str(xScore), arial, height, CENTER, CENTER, width*81/240,height*27/240,width*40/240,height*19/240);
  textDraw(str(oScore), arial, height, CENTER, CENTER, width*174/240,height*27/240,width*40/240,height*19/240);
  
    if(xScore > 9 || oScore > 9){
    xScore = 0;
    oScore = 0;
  }  if(winX == true){
    fill(white);
    rect(width*81/240,height*27/240,width*40/240,height*19/240);//score for x
    /*rect(width*96/240,height*96/240,width*144/240,height*144/240);
    textDraw("Press Continue",arial,height,CENTER,CENTER,width*96/240,height*96/240,width*144/240,height*144/240);*/
    toContinue = true;
     for(int i = 0; i < 9; i++){
    noDraw[i] = true;
     }
 
  }if(winO == true){
    fill(white);
    rect(width*174/240,height*27/240,width*40/240,height*19/240);//score for O
    //rect(width*96/240,height*96/240,width*144/240,height*144/240);
    //textDraw("Press Continue",arial,height,CENTER,CENTER,width*96/240,height*96/240,width*144/240,height*144/240);
    toContinue = true;
    for(int i = 0; i < 9; i++){
    noDraw[i] = true;
     }
  }if(noDraw[8] == true&&noDraw[0] == true&&noDraw[1] == true&&noDraw[2] == true&&noDraw[3] == true&&noDraw[4] == true&&noDraw[5] == true&&noDraw[6] == true&&noDraw[7] == true){
    fill(white);
    rect(width*174/240,height*27/240,width*40/240,height*19/240);//score for O
    rect(width*81/240,height*27/240,width*40/240,height*19/240);//score for x
    //rect(width*96/240,height*96/240,width*144/240,height*144/240);
    //textDraw("Press Continue",arial,height,CENTER,CENTER,width*96/240,height*96/240,width*144/240,height*144/240);
    toContinue=true;
  }
}
