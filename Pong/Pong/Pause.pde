void pause() {
  if (pauseScreen == true) {//need quit nightmode restart tutorial
    fill(black);
    rect(displayWidth*1/2-displayWidth*1/6, displayHeight*1/10, displayWidth*1/3, displayHeight*2/3);
    fill(white);
    if (mouseX>=MButtonX && mouseX<=MButtonX+MButtonXS && mouseY>= displayHeight*1/10+displayHeight*1/30 && mouseY<=displayHeight*1/10+displayHeight*1/30+MButtonYS) {
      fill(grey);
    }
    rect(MButtonX, displayHeight*1/10+displayHeight*1/30, MButtonXS, MButtonYS);//start again
    fill(white);
    if (mouseX>=MButtonX && mouseX<=MButtonX+MButtonXS && mouseY>= displayHeight*1/10+displayHeight*4/30 && mouseY<=displayHeight*1/10+displayHeight*4/30+MButtonYS) {
      fill(grey);
    }
    rect(MButtonX, displayHeight*1/10+displayHeight*4/30, MButtonXS, MButtonYS);//nightmode/lightmode  
    fill(white);
    if (mouseX>=MButtonX && mouseX<=MButtonX+MButtonXS && mouseY>= displayHeight*1/10+displayHeight*7/30 && mouseY<=displayHeight*1/10+displayHeight*7/30+MButtonYS) {
      fill(grey);
    }
    rect(MButtonX, displayHeight*1/10+displayHeight*7/30, MButtonXS, MButtonYS);//tutorial
    fill(white);
    if (mouseX>=MButtonX && mouseX<=MButtonX+MButtonXS && mouseY>= displayHeight*1/10+displayHeight*10/30 && mouseY<=displayHeight*1/10+displayHeight*10/30+MButtonYS) {
      fill(grey);
    }
    rect(MButtonX, displayHeight*1/10+displayHeight*10/30, MButtonXS, MButtonYS);//restart
    fill(white);
    if (mouseX>=MButtonX && mouseX<=MButtonX+MButtonXS && mouseY>= displayHeight*1/10+displayHeight*13/30 && mouseY<=displayHeight*1/10+displayHeight*13/30+MButtonYS) {
      fill(grey);
    }
    rect(MButtonX, displayHeight*1/10+displayHeight*13/30, MButtonXS, MButtonYS);//quit/exit
    textDraw(black, unpause, font1, displayHeight, CENTER, CENTER, MButtonX, displayHeight*1/10+displayHeight*1/30, MButtonXS, MButtonYS);
    textDraw(black, lightmode, font1, displayHeight, CENTER, CENTER, MButtonX, displayHeight*1/10+displayHeight*4/30, MButtonXS, MButtonYS);
    textDraw(black, casual, font1, displayHeight, CENTER, CENTER, MButtonX, displayHeight*1/10+displayHeight*7/30, MButtonXS, MButtonYS);
    textDraw(black, restart, font1, displayHeight, CENTER, CENTER, MButtonX, displayHeight*1/10+displayHeight*10/30, MButtonXS, MButtonYS);
    textDraw(black, exit, font1, displayHeight, CENTER, CENTER, MButtonX, displayHeight*1/10+displayHeight*13/30, MButtonXS, MButtonYS);
  }
}
