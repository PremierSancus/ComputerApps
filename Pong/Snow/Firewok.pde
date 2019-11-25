class Firewok {
  //object variables
  private float x;
  private float y;
  private float diameter;
  private float xSpeed;
  private float ySpeed;
  private float count= 0;
  //constructor - populates single object variables
  Firewok (float X, float Y, float xSpeed, float ySpeed, float diameter) {
    this.x = X;
    this.y = Y;
    this.diameter = diameter;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
  }
  //edge detection
  void edgeDetection() {
    count++;
    if (x+diameter/2 >= displayWidth || x-diameter/2 <= 0) {
      xSpeed = xSpeed *-1;
    }
    if (y >= displayHeight) {
      y=0;
      ySpeed = random(5, 30);
    }
  }
  //Ball movement
  void move() {
    x = x+xSpeed;
    count ++;
    y = y+ySpeed;
    if (count == 5) {
      ySpeed = ySpeed +1;
      count = 0;
    }
  }

  //Draw
  void classDraw() {
    fill(255);
    ellipse(x, y, diameter, diameter);
  }
  // Getters and Setters
}
