//explodin FIreworks program
//Globul Objects
Ball[] balls = new Ball[80];
//Globul variobles

void setup() {
  //size(1600,800);
  fullScreen();
  screenSizeTester();
  createBall();
}//end of setup

void draw() {
  background(0);
  //remember dank mode
  for (int i = 0; i<balls.length; i++) {
    //balls[i].edgeDetection();
    //balls[i].move();
    balls[i].classDraw();
  }
  
}//end of draw

void mousePressed() {
    createBall();

}//end of mousepressed
