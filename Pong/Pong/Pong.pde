//globul vuriubles
Boolean deploy1 = false;
Boolean deploy2 = false;
Boolean nightMode = false;
Boolean pauseScreen = false;
Boolean casualMode = true;
String exit = "Exit", lightmode, unpause = "Unpause", restart = "Restart", casual;
color yellow = #E1FF05, grey = #747272, red, blue, green = #07ED20, black, white;
PFont font1, font2;
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
int P1;
int P2;
float MButtonXS;
float MButtonYS;
float MButtonX;
int P1savior = 12;
int D1savior = 1;
int P2savior = 12;
int D2savior = 1;


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
  SPDX = 5*number;
  number = int (random (-2, 2));
  while (number == 0) {
    number = int (random (-2, 2));
  }
  SPDY = 7.5*number;
}

void draw() {
  if (casualMode == true) {
    casual = "casual";
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
      if (ballMoveX <= ballSize/2) { //ball into left net
        ballMoveX = int(ballPositionX);
        ballMoveY = int(ballPositionY);
        playerTwoScore += 1;
      }
      if (ballMoveX >= displayWidth-ballSize/2) {//ball into right net
        ballMoveX = int(ballPositionX);
        ballMoveY = int(ballPositionY);
        playerOneScore += 1;
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
  casualnot();
}

void keyPressed() {
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
  if (key == CODED && key == 'E' || key == 'e') {
      deploy1 = true;    
  }
}
void keyReleased() {
  if (key == CODED && keyCode == UP) {
    rightPaddleUp = false;
  }
  if (key == CODED && keyCode == DOWN) {
    rightPaddleDown = false; 
  }
  if (key == CODED && key == 'W' || key == 'w') {
    leftPaddleUp = false;
  }
  if (key == CODED && key == 'S' || key == 's') {
    leftPaddleDown = false;
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
      if (mouseY>=displayHeight*1/10+displayHeight*10/30 && mouseY<=displayHeight*1/10+displayHeight*10/30+(displayHeight*1/12)) {//restart
        restart();
      }
      if (mouseY>=displayHeight*1/10+displayHeight*13/30 && mouseY<=displayHeight*1/10+displayHeight*13/30+(displayHeight*1/12)) {//quit/exit
        exit();
      }  
      if (nightMode == false) {
        if (mouseY>=displayHeight*1/10+displayHeight*4/30 && mouseY<=displayHeight*1/10+displayHeight*4/30+(displayHeight*1/12)) {//nightmode/lightmode
          nightMode = true;
        }
      } else {
        if (mouseY>=displayHeight*1/10+displayHeight*4/30 && mouseY<=displayHeight*1/10+displayHeight*4/30+(displayHeight*1/12)) {//nightmode/lightmode
          nightMode = false;
        }
      }
      if (casualMode == true) {
        if (mouseY>=displayHeight*1/10+displayHeight*7/30 && mouseY<=displayHeight*1/10+displayHeight*7/30+(displayHeight*1/12)) {//casual
          casualMode = false;
        }
      } else {
        if (mouseY>=displayHeight*1/10+displayHeight*7/30 && mouseY<=displayHeight*1/10+displayHeight*7/30+(displayHeight*1/12)) {//casual
          casualMode = true;
        }
      }
    }
  }
}
