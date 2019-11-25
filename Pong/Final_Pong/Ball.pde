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
  void edgeDetection() {
    
    if (x+diameter/2 >= displayWidth ){
      xSpeed*=-1;
      x = displayWidth-diameter/2;
    }
    if(x-diameter/2 <= 0) {
      xSpeed*=-1;
      x = diameter/2;
    }
    if (y+diameter/2 >= displayHeight ) {
      ySpeed*=-1;
      y = displayHeight-diameter/2;
    }
    if( y-diameter/2 <= 0){
      ySpeed*=-1;
      y = diameter/2;
    }
  }
  //Ball movement
  void move() {
    x = x+xSpeed;
    y = y+ySpeed;
    ySpeed = ySpeed +1;
  }

  //Draw
  void classDraw() {
    fill(colour);
    ellipse(x, y, diameter, diameter);
  }
  // Getters and Setters
}
