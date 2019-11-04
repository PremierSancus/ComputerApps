class Firewok {
  //object variables
  float x;
  float y;
  color colour;
  float diameter;
  float xSpeed;
  float ySpeed;

  //constructor - populates single object variables
  Firewok (float X, float Y, color C) {
    this.x = X;
    this.y = Y;
    this.colour = C;
    diameter = 25.0;
    xSpeed = 4;
    ySpeed = 2;
  }
  //edge detection
  void edgeDetection() {
    if (x+diameter/2 >= displayWidth || x-diameter/2 <= 0) {
      xSpeed = xSpeed *-1;
    }
    if (y+diameter/2 >= displayHeight || y-diameter/2 <= 0) {
      ySpeed = ySpeed *-1;
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
