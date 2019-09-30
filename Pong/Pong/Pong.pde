//globul vuriubles
Boolean pauseScreen = false;
Boolean tutorialScreen = false;
color yellow = #E1FF05, grey = #747272, red = #ED0707, blue = #0727ED;
PFont font1;
float ballSize;
float ballPositionY;
float ballPositionX;
int ballMoveX;
int ballMoveY;
float SPDX;
float SPDY;
Boolean nightMode = false;
float YP1 = 4;
float YP2 = 4;
float paddleSizeY;
float paddleSizeX;
float paddleStartY;
boolean rightPaddleUp;
boolean rightPaddleDown;
boolean leftPaddleUp;
boolean leftPaddleDown;
boolean gameIsOn;
float paddleRightMove;
float paddleLeftMove;
int playerOneScore = 0;
int playerTwoScore = 0;
void setup() {
  fullScreen();
  screenSizeChecker();
  textSetup();
  ballPositionX = displayWidth*1/2;
  ballPositionY = displayHeight*1/2;
  ballSize = displayWidth*1/128;
  ballMoveX = int(ballPositionX);
  ballMoveY = int(ballPositionY);
  paddleSizeX = displayWidth*1/128;
  paddleSizeY = displayHeight*6/30;
  ellipse(ballPositionX, ballPositionY, ballSize, ballSize);
   int number = int (random (-2, 2));
  while (number == 0) {
    number = int (random (-2, 2));
  }
  SPDX = 2*number;
  number = int (random (-2, 2));
  while (number == 0) {
    number = int (random (-2, 2));
  }
  SPDY = 2.5*number;
}

void draw() {

  background(225);
  if ( pauseScreen == false) {
    if (ballMoveX <= ballSize/2) { //ball into left net
      ballMoveX = int(ballPositionX);
      ballMoveY = int(ballPositionY);
      playerOneScore += 1;
    }
    if (ballMoveX >= displayWidth-ballSize/2) {//ball into right net
      ballMoveX = int(ballPositionX);
      ballMoveY = int(ballPositionY);
      playerTwoScore += 1;
    }
    if (ballMoveY <= ballSize/2 || ballMoveY >= displayHeight-ballSize/2) {//deflect from top to bottom
      SPDY = SPDY*(-1);
    }
    if (ballMoveX <= (displayWidth*1/64)+ paddleSizeX + ballSize/2 && ballMoveX >= displayWidth*1/64) {
      if (ballMoveY >= displayHeight*YP1/30 && ballMoveY <= displayHeight*(YP1/30)+paddleSizeY) {//Paddle deflection1
        SPDX = SPDX *(-1);
      }
    }
    if (ballMoveX >= (displayWidth*63/64) - paddleSizeX && ballMoveX <= displayWidth*63/64) {
      if (ballMoveY >= displayHeight*YP2/30 && ballMoveY <= displayHeight*(YP2/30)+paddleSizeY) {//Paddle deflection2
        SPDX = SPDX *(-1);
      }
    }
    if (playerOneScore>playerTwoScore){
      if(SPDX<0){
        SPDX = SPDX-playerOneScore;
        SPDY = SPDY-playerOneScore;
      }
    }
    if (playerOneScore<playerTwoScore){
      if(SPDX>0){
        SPDX = SPDX+playerTwoScore;
        SPDY = SPDY+playerTwoScore;//dont work
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

  noStroke();
  fill(red);
  rect(displayWidth*1/64, displayHeight*YP1/30, paddleSizeX, paddleSizeY);//paddle to the left
  rect((displayWidth*63/64)-paddleSizeX, displayHeight*YP2/30, paddleSizeX, paddleSizeY);
  fill(yellow);
  ellipse(ballMoveX, ballMoveY, ballSize, ballSize);
  fill(0);
  if (mouseX >= displayWidth*1/2-displayWidth*1/128 && mouseX <= displayWidth*1/2+displayWidth*2/128 && mouseY <= displayHeight*1/32+displayHeight*1/200) {
    fill(grey);
  }
  rect(displayWidth*1/2-displayWidth*1/128, displayHeight*1/200, displayWidth*1/128, displayHeight*1/32);
  rect(displayWidth*1/2+displayWidth*1/128, displayHeight*1/200, displayWidth*1/128, displayHeight*1/32);
  stroke(1);

  if (pauseScreen == true) {//need quit nightmode restart tutorial
    rect(displayWidth*1/2-displayWidth*1/6,displayHeight*1/10,displayWidth*1/3,displayHeight*2/3);
    fill(225);
    rect(displayWidth*1/2-displayWidth*1/6+displayWidth*1/25, displayHeight*1/10+displayHeight*1/30,displayWidth*1/3-displayWidth*2/25,displayHeight*1/12);
    rect(displayWidth*1/2-displayWidth*1/6+displayWidth*1/25, displayHeight*1/10+displayHeight*1/30,displayWidth*1/3-displayWidth*2/25,displayHeight*1/12);
  }
}

void keyPressed() {
  if (tutorialScreen == true && key == ' ') {
    tutorialScreen = false;
    exit();
  }
  if (key == CODED && keyCode == UP) {
    rightPaddleUp = true;
    rightPaddleDown = false;
  }
  if (key == CODED && keyCode == DOWN) {
    rightPaddleDown = true; 
    rightPaddleUp = false;
  }
  if (key == CODED && key == 'W' || key == 'w') {
    leftPaddleUp = true;
    leftPaddleDown = false;
  }
  if (key == CODED && key == 'S' || key == 's') {
    leftPaddleDown = true;
    leftPaddleUp = false;
  }
}
void keyReleased() {
  if (key == CODED && keyCode == UP) {
    rightPaddleUp = false;
    rightPaddleDown = false;
  }
  if (key == CODED && keyCode == DOWN) {
    rightPaddleDown = false; 
    rightPaddleUp = false;
  }
  if (key == CODED && key == 'W' || key == 'w') {
    leftPaddleUp = false;
    leftPaddleDown = false;
  }
  if (key == CODED && key == 'S' || key == 's') {
    leftPaddleDown = false;
    leftPaddleUp = false;
  }
}
void mouseClicked() {
  if (pauseScreen == false) {
    if (mouseX >= displayWidth*1/2-displayWidth*1/128 && mouseX <= displayWidth*1/2+displayWidth*2/128 && mouseY <= displayHeight*1/32+displayHeight*1/200) {
      pauseScreen = true;
    }
  }
}
