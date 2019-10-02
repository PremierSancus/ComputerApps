//globul vuriubles
Boolean nightMode = false;
Boolean pauseScreen = false;
Boolean tutorialScreen = false;
String exit = "Exit", lightmode, unpause = "Unpause", restart = "Restart", tutorial = "tutorial";
color yellow = #E1FF05, grey = #747272, red = #ED0707, blue = #0727ED, green = #07ED20, black, white;
PFont font1;
float ballSize;
float ballPositionY;
float ballPositionX;
int ballMoveX;
int ballMoveY;
float SPDX;
float SPDY;
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
float MButtonXS;
float MButtonYS;
float MButtonX;

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
  MButtonXS = displayWidth*1/3-displayWidth*2/25;
  MButtonYS = displayHeight*1/12;
  MButtonX = displayWidth*1/2-displayWidth*1/6+displayWidth*1/25;
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
  if (nightMode == true) {
    white = 0;
    black = 225;
    lightmode = "Nightmode";
  }
  if (nightMode == false) {
    white = 225;
    black = 0;
    lightmode = "Lightmode";
  }
  background(white);
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
  if (pauseScreen == true) {
    if (mouseX>=displayWidth*1/2-displayWidth*1/6+displayWidth*1/25 && mouseX<=displayWidth*1/2-displayWidth*1/6+displayWidth*1/25+(displayWidth*1/3-displayWidth*2/25)) {
      if (mouseY>=displayHeight*1/10+displayHeight*1/30 && mouseY<=displayHeight*1/10+displayHeight*1/30+(displayHeight*1/12)) {//unpause
        pauseScreen = false;
      }
      if (mouseY>=displayHeight*1/10+displayHeight*4/30 && mouseY<=displayHeight*1/10+displayHeight*1/30+(displayHeight*1/12)) {//nightmode/lightmode
        if (nightMode == false) {
          nightMode = true;
        }
        if (nightMode == true) {
          nightMode = false;
        }
      }
      if (mouseY>=displayHeight*1/10+displayHeight*7/30 && mouseY<=displayHeight*1/10+displayHeight*1/30+(displayHeight*1/12)) {//tutorial
      }
      if (mouseY>=displayHeight*1/10+displayHeight*10/30 && mouseY<=displayHeight*1/10+displayHeight*1/30+(displayHeight*1/12)) {//restart
      }
      if (mouseY>=displayHeight*1/10+displayHeight*13/30 && mouseY<=displayHeight*1/10+displayHeight*1/30+(displayHeight*1/12)) {//quit/exit
      }
    }
  }
}
