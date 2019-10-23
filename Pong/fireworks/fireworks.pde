
Ball ball = new Ball(300, 250, 25);

void setup() {
  size(1600, 1000); //Teaching Canvas, all students will use size, not fullScreen()
  screenSizeTester();
  //ellipseMode(CENTER); // Default mode so a reminder that ball is drawn from centre
} // End setup()

void draw() {
  background(0); //Black, greyscale (less memory than color variable)
  ball.stepGently();
  drawBall(255, ball.getX(), ball.y, ball.diameter);
} // End draw()

void mousePressed() {
  ball.targetX = mouseX;
  ball.targetY = mouseY;
  ball.prevX = ball.getX();
  ball.prevY = ball.y;
} // End mousePressed()

void keyPressed() {
} // End keyPressed()
