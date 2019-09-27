//globul vuriubles
Boolean pauseScreen;
Boolean tutorialScreen;
color yellow = #E1FF05,grey = #747272,red = #ED0707,blue = #0727ED;
PFont font1;
float ballSize;
float ballPositionY;
float ballPositionX;
int ballMoveX;
int ballMoveY;
float SPDX = 2;
float SPDY = 2.5;
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
int playerOneScore;
int playerTwoScore;
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
  paddleSizeY = displayHeight*2/10;
  ellipse(ballPositionX,ballPositionY,ballSize,ballSize);
}

void draw() {
  
  background(225);
  
  if (ballMoveX <= ballSize/2){ //ball into left net
    ballMoveX = int(ballPositionX);
    ballMoveY = int(ballPositionY);
    playerOneScore += 1;
  }
  if (ballMoveX >= displayWidth-ballSize/2){//ball into right net
    ballMoveX = int(ballPositionX);
    ballMoveY = int(ballPositionY);
    playerTwoScore += 1;
  }
  if (ballMoveY <= ballSize/2 || ballMoveY >= displayHeight-ballSize/2){//deflect from top to bottom
    SPDY = SPDY*(-1);
  }
  if (ballMoveX <= (displayWidth*1/64)+ paddleSizeX + ballSize/2 && ballMoveX >= displayWidth*1/64){
    if (ballMoveY >= displayHeight*YP1/10 && ballMoveY <= displayHeight*(YP1/10)+paddleSizeY) {//Paddle deflection1
        SPDX = SPDX *(-1);
      }
  }
  if (ballMoveX >= (displayWidth*63/64) - paddleSizeX && ballMoveX <= displayWidth*63/64){
    if (ballMoveY >= displayHeight*YP2/10 && ballMoveY <= displayHeight*(YP2/10)+paddleSizeY) {//Paddle deflection2
        SPDX = SPDX *(-1);
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
  if (YP2 >= height-paddleSizeY ) {
    YP2 = height-paddleSizeY;
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
  if (YP1 >= height-paddleSizeY ) {
    YP1 = height-paddleSizeY;
  }
  
  
  noStroke();
  fill(red);
  rect(displayWidth*1/64,displayHeight*YP1/10,paddleSizeX,paddleSizeY);//paddle to the left
  rect((displayWidth*63/64)-paddleSizeX,displayHeight*YP2/10,paddleSizeX,paddleSizeY);
  fill(yellow);
  ellipse(ballMoveX,ballMoveY,ballSize,ballSize);
  fill(225);
  stroke(1);
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

void mouseClicked() {
}
