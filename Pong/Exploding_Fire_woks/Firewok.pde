class Firewok {
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
  Firewok (float X, float Y, float xSpeed, float ySpeed, float diameter) {
    this.x = X;
    this.y = Y;
    this.diameter = diameter;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.colour = color(int(random(50, 256)), int(random(50, 256)), int(random(50, 256)));
  }
  //edge detection
  void edgeDetection() {
    if (x+diameter/2 >= displayWidth || x-diameter/2 <= 0) {
      xSpeed = xSpeed *-1;
    }
    if (y+diameter/2 >= displayHeight ) {
      ySpeed = ySpeed *-1;
    }
  }
  //Ball movement
  void move() {
    x = x+xSpeed;
    y = y+ySpeed;
    if (ySpeed < 1) {
      ySpeed = ySpeed +1;
    }
  }

  //Draw
  void classDraw() {
    fill(colour);
    rect(x, y, diameter, diameter);
  }
  // Getters and Setters
}
