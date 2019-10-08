void casualnot() {
  if (casualMode == false) {
    if (SPDX <= 5 || SPDY <= 7.5){
      SPDX = 5;
      SPDY = 7.5;
    }
    if( SPDX >= -5 || SPDY >= -7.5){
      SPDX = -5;
      SPDY = -7.5;
    }
    casual = "not casual";
    if (nightMode == true) {
      red = #930101;
      blue = #010876;
      white = 0;
      black = 225;
      lightmode = "Nightmode";
    }
    if (nightMode == false) {
      red = #F50000;
      blue = #2C00F5;
      white = 225;
      black = 0;
      lightmode = "Lightmode";
    }
    background(white);
    if ( pauseScreen == false) {
      if ( playerTwoScore-playerOneScore >= 1) {//save playuh 1
        P1savior += 1*D1savior;
        if (P1savior >= 96) {
          D1savior = D1savior*(-1);
        }
        if (P1savior <= 0) {
          D1savior = D1savior*(-1);
        }
        if (ballMoveX <= displayWidth*4/64 + paddleSizeX*2 + ballSize/2 && ballMoveX >= displayWidth*4/64 + paddleSizeX) {
          if (ballMoveY >= displayHeight*P1savior/120 && ballMoveY <= displayHeight*(P1savior/120) + paddleSizeY) {//Paddle deflection1
            SPDX = SPDX * -1;
          }
        }
      }
      if ( playerOneScore-playerTwoScore >= 1) {//save playuh 2
        P2savior += 1*D2savior;
        if (P2savior >= 96) {
          D2savior = D2savior*(-1);
        }
        if (P2savior <= 0) {
          D2savior = D2savior*(-1);
        }
        if (ballMoveX >= (displayWidth*59/64)-paddleSizeX - paddleSizeX && ballMoveX <= (displayWidth*59/64)-paddleSizeX) {
          if (ballMoveY >= displayHeight*P2savior/120 && ballMoveY <= displayHeight*P2savior/120+paddleSizeY) {//Paddle deflection2
            SPDX = SPDX *(-1);
          }
        }
      }
      if (ballMoveX <= ballSize/2) { //ball into left net player two scores
        ballMoveX = int(ballPositionX);
        ballMoveY = int(ballPositionY);
        playerTwoScore += 1;
        SPDX = SPDX * 0.8;
        SPDY = SPDY * 0.8;
      }
      if (ballMoveX >= displayWidth-ballSize/2) {//ball into right net player one Scores
        ballMoveX = int(ballPositionX);
        ballMoveY = int(ballPositionY);
        playerOneScore += 1;
        SPDX = SPDX * 0.8;
        SPDY = SPDY * 0.8;
      }
      if (ballMoveY <= ballSize/2 || ballMoveY >= displayHeight-ballSize/2) {//deflect from top to bottom
        SPDY = SPDY*(-1);
      }
      if (ballMoveX <= (displayWidth*1/64)+ paddleSizeX + ballSize/2 && ballMoveX >= displayWidth*1/64) {
        if (ballMoveY >= displayHeight*YP1/30 && ballMoveY <= displayHeight*(YP1/30)+paddleSizeY) {//Paddle deflection1
          SPDX = SPDX *(-1.1);
          SPDY = SPDY *(1.1);
        }
      }
      if (ballMoveX >= (displayWidth*63/64) - paddleSizeX && ballMoveX <= displayWidth*63/64) {
        if (ballMoveY >= displayHeight*YP2/30 && ballMoveY <= displayHeight*(YP2/30)+paddleSizeY) {//Paddle deflection2
          SPDX = SPDX *(-1.1);
          SPDY = SPDY *(1.1);
        }
      }

      ballMoveX += SPDX;
      ballMoveY += SPDY;

      if (rightPaddleUp == true ) {
        YP2 -= 1;
      }
      if (rightPaddleDown == true) {
        YP2 += 1;
      }
      if (YP2 <= 0 ) {
        YP2 = 0;
      }
      if (displayHeight*YP2/30 >= displayHeight-paddleSizeY ) {
        YP2 = 24;
      }
      if (leftPaddleUp == true ) {
        YP1 -= 1;
      }
      if (leftPaddleDown == true) {
        YP1 += 1;
      }
      if (YP1 <= 0 ) {
        YP1 = 0;
      }
      if (displayHeight*YP1/30 >= displayHeight-paddleSizeY ) {
        YP1 = 24;
      }
    }

    nightmode();
    pause();
  }
}
