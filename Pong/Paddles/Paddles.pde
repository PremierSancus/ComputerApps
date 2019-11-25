//Globul Objects
Ball[] balls = new Ball[1];
PaddlesClass[] paddle = new PaddlesClass[2];
Wall[] walls = new Wall[1];
//Globul Variables
float yMove1 = 0;
float yMove2 = 0;
float paddleSpeed = 1;
boolean rightPaddleUp;
boolean rightPaddleDown;
boolean leftPaddleUp;
boolean leftPaddleDown;
boolean wall;
void setup() {
  fullScreen();
  createBall();
  balls[0].x = displayWidth*1/2;
  balls[0].y = displayHeight*1/2;
  balls[0].xSpeed = 4;
  wall = false;
}

void draw() {
  paddle[0] = new PaddlesClass(displayWidth, displayHeight, 0.05, 0, yMove1,#EA0000);//object 0  
  paddle[1] = new PaddlesClass(displayWidth, displayHeight, 0.95, 0.0125, yMove2,#0311FF);//object 1
  background(255);
  balls[0].edgeDetection(paddle[1].x, paddle[1].rectWidth, paddle[1].rectHeight+paddle[1].y, paddle[1].y, paddle[0].rectHeight+paddle[0].y, paddle[0].y, paddle[0].rectWidth+paddle[0].x);//(float P1, float P1H2, float P1H1, float P0W1, float P0H2, float P0H1, float P0W2)
  if (wall == true) {
    balls[0].wallReflection(walls[0].x, walls[0].rectWidth);
    walls[0].move();
    walls[0].classDraw();
    if (walls[0].x == displayWidth) {
      wall = false;
    }
  }
  balls[0].move();
  balls[0].classDraw();
  paddle[0].classDraw();
  paddle[1].classDraw();
  PaddlePosition();
}

void mousePressed() {
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
  if (wall == false && key == CODED && key == 'E' || key == 'e') {
    walls[0] = new Wall(-displayWidth/80, 0, displayWidth, displayHeight, 1, 1,paddle[0].colour);
    wall = true;
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
