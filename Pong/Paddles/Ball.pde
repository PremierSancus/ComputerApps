class Ball {
  //object variables
  float x;
  float y;
  color colour;
  float diameter;
  float xSpeed;
  float ySpeed;
  float xnet = 0;
  float ynet = 0;
  float count= 0;
  //constructor - populates single object variables
  Ball (float X, float Y, float xSpeed, float ySpeed, float diameter) {
    this.x = X;
    this.y = Y;
    this.diameter = diameter;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.colour = color(int(random(50, 256)), int(random(50, 256)), int(random(50, 256)));
  }
  //edge detection
  void edgeDetection(float P2, float P2W1, float P2H2, float P2H1, float P1H2, float P1H1, float P1W2) {
    if (x+diameter/2 >= P2 && x-diameter/2 <= P2+P2W1 && y+diameter/2 < P2H2 && y+diameter/2 > P2H1) {//bounce from Right paddle
      x = P2 - diameter/2;
      xSpeed*=-1;
    }
    if (x-diameter/2 <= P1W2 && y+diameter/2 < P1H2 && y+diameter/2 > P1H1) {//bounce from LEFT paddle
      x = P1W2 + diameter/2;
      xSpeed*=-1;
    }
    if (x+diameter/2 >= displayWidth ) {
      xSpeed*=-1;
      x = displayWidth-diameter/2;
    }
    if (x-diameter/2 <= 0) {
      xSpeed*=-1;
      x = diameter/2;
    }
    if (y+diameter/2 >= displayHeight ) {
      ySpeed*=-1;
      y = displayHeight-diameter/2;
    }
    if ( y-diameter/2 <= 0) {
      ySpeed*=-1;
      y = diameter/2;
    }
    
  }
  void wallReflection(float wallX, float wallWidth) {
    if (x >= wallX && x <= wallX+wallWidth ) {
      x=wallX+wallWidth+diameter/2;
      xSpeed*=-1;
      
    }
  }
  //Ball movement
  void move() {
    x = x+xSpeed;
    y = y+ySpeed;
  }

  //Draw
  void classDraw() {
    fill(colour);
    ellipse(x, y, diameter, diameter);
  }
  // Getters and Setters
}
void createBall() {
  for (int i = 0; i < balls.length; i++) {
    float xLocation = random(displayWidth);//random(width);
    float yLocation = random(displayHeight);//random(height);
    float xSpeed = random(-10, 10);
    if (xSpeed > -4 && xSpeed < 4) {
      createBall();
    }
    float ySpeed = random(-10, 10);
    float diameter = random(15, 25);
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
    balls[i] = new Ball(xLocation, yLocation, xSpeed, ySpeed, diameter );
  }
}
