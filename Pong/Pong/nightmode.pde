void nightmode() {
  if (nightMode == false) {
    noStroke();
    fill(red);
    rect(displayWidth*1/64, displayHeight*YP1/30, paddleSizeX, paddleSizeY);//paddle to the left
    rect((displayWidth*63/64)-paddleSizeX, displayHeight*YP2/30, paddleSizeX, paddleSizeY);
    fill(yellow);
    ellipse(ballMoveX, ballMoveY, ballSize, ballSize);
    fill(black);
    if (mouseX >= displayWidth*1/2-displayWidth*1/128 && mouseX <= displayWidth*1/2+displayWidth*2/128 && mouseY <= displayHeight*1/32+displayHeight*1/200) {
      fill(grey);
    }
    rect(displayWidth*1/2-displayWidth*1/128, displayHeight*1/200, displayWidth*1/128, displayHeight*1/32);
    rect(displayWidth*1/2+displayWidth*1/128, displayHeight*1/200, displayWidth*1/128, displayHeight*1/32);
    stroke(1);
  }
  if (nightMode == true) {
    noStroke();
    fill(blue);
    rect(displayWidth*1/64, displayHeight*YP1/30, paddleSizeX, paddleSizeY);//paddle to the left
    rect((displayWidth*63/64)-paddleSizeX, displayHeight*YP2/30, paddleSizeX, paddleSizeY);
    fill(green);
    ellipse(ballMoveX, ballMoveY, ballSize, ballSize);
    fill(white);
    if (mouseX >= displayWidth*1/2-displayWidth*1/128 && mouseX <= displayWidth*1/2+displayWidth*2/128 && mouseY <= displayHeight*1/32+displayHeight*1/200) {
      fill(grey);
    }
    rect(displayWidth*1/2-displayWidth*1/128, displayHeight*1/200, displayWidth*1/128, displayHeight*1/32);
    rect(displayWidth*1/2+displayWidth*1/128, displayHeight*1/200, displayWidth*1/128, displayHeight*1/32);
    stroke(1);
  }
}
