void createBall() {
  for (int i = 0; i < balls.length; i++) {
    float xLocation = mouseX;//random(width);
    float yLocation = mouseY;//random(height);
    float xSpeed = random(-3,3);
    float ySpeed = random(-32,5);
    float diameter = random(20,40);
    if (xLocation >= width-25) {
      xLocation = width-25/2;
    }
    if (xLocation <= 25) {
      xLocation = 25/2;
    }
    if (yLocation >= height-25) {
      yLocation = height-25/2;
    }
    if (yLocation <= 25) {
      yLocation = 25/2;
    }    
    balls[i] = new Ball(xLocation, yLocation,xSpeed,ySpeed,diameter );
  }
}
