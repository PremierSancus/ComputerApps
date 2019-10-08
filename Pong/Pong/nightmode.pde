void nightmode() {
  if (nightMode == false) {
    noStroke();
    fill(red);
    rect(displayWidth*1/64, displayHeight*YP1/30, paddleSizeX, paddleSizeY);//paddle to the left
    if (casualMode == false) {
      if ( playerTwoScore-playerOneScore >= 1) {//save playuh 1
        rect(displayWidth*4/64+paddleSizeX, displayHeight*P1savior/120, paddleSizeX, paddleSizeY);//paddle to the left
      }
    }
    fill(blue);
    rect((displayWidth*63/64)-paddleSizeX, displayHeight*YP2/30, paddleSizeX, paddleSizeY);
    if (casualMode == false) {
      if ( playerOneScore-playerTwoScore >= 1) {//save playuh 1
        rect((displayWidth*59/64)-paddleSizeX, displayHeight*P2savior/120, paddleSizeX, paddleSizeY);//paddle to the left
      }
    }
    fill(yellow);
    ellipse(ballMoveX, ballMoveY, ballSize, ballSize);
    fill(black);
    if (mouseX >= displayWidth*1/2-displayWidth*1/128 && mouseX <= displayWidth*1/2+displayWidth*2/128 && mouseY <= displayHeight*1/32+displayHeight*1/200) {
      fill(grey);
    }
    rect(displayWidth*1/2-displayWidth*1/128, displayHeight*1/200, displayWidth*1/128, displayHeight*1/32);
    rect(displayWidth*1/2+displayWidth*1/128, displayHeight*1/200, displayWidth*1/128, displayHeight*1/32);
    textDraw(black, ""+playerOneScore, font2, displayHeight, CENTER, CENTER, displayWidth*1/4-1/8, 0, displayWidth*1/4, displayHeight*1/6);
    textDraw(black, ""+playerTwoScore, font2, displayHeight, CENTER, CENTER, displayWidth*2/4+1/8, 0, displayWidth*1/4, displayHeight*1/6);
    stroke(1);
    if (casualMode == false) {
      if (deploy1 == true) {
        rect(displayWidth*1/64, displayHeight*YP1/30, paddleSizeX, paddleSizeY);//paddle to the left
      }
    }
  }
  if (nightMode == true) {
    noStroke();
    fill(red);
    rect(displayWidth*1/64, displayHeight*YP1/30, paddleSizeX, paddleSizeY);//paddle to the left
    if (casualMode == false) {
      if ( playerTwoScore-playerOneScore >= 1) {//save playuh 1
        rect(displayWidth*4/64+paddleSizeX, displayHeight*P1savior/120, paddleSizeX, paddleSizeY);//paddle to the left
      }
    }
    fill(blue);
    rect((displayWidth*63/64)-paddleSizeX, displayHeight*YP2/120, paddleSizeX, paddleSizeY);
    if (casualMode == false) {
      if ( playerOneScore-playerTwoScore >= 1) {//save playuh 1
        rect((displayWidth*59/64)-paddleSizeX, displayHeight*P2savior/30, paddleSizeX, paddleSizeY);//paddle to the left
      }
    }
    fill(green);
    ellipse(ballMoveX, ballMoveY, ballSize, ballSize);
    fill(black);
    if (mouseX >= displayWidth*1/2-displayWidth*1/128 && mouseX <= displayWidth*1/2+displayWidth*2/128 && mouseY <= displayHeight*1/32+displayHeight*1/200) {
      fill(grey);
    }
    rect(displayWidth*1/2-displayWidth*1/128, displayHeight*1/200, displayWidth*1/128, displayHeight*1/32);
    rect(displayWidth*1/2+displayWidth*1/128, displayHeight*1/200, displayWidth*1/128, displayHeight*1/32);
    textDraw(black, ""+playerOneScore, font2, displayHeight, CENTER, CENTER, displayWidth*1/4-1/8, 0, displayWidth*1/4, displayHeight*1/6);
    textDraw(black, ""+playerTwoScore, font2, displayHeight, CENTER, CENTER, displayWidth*2/4+1/8, 0, displayWidth*1/4, displayHeight*1/6);
    stroke(1);
  }
}
