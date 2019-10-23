class Ball {
  private float x;
  float y;
  float diameter;
  float targetX;
  float targetY;
  float prevX;
  float prevY;
  float done = 1;

  Ball(float xParameter, float yParameter, float diameterParameter) { // float vs int
    this.x = xParameter;
    this.y = yParameter; 
    this.diameter = diameterParameter;

    targetX = xParameter;
    targetY = yParameter;
  } // End of Constructor
  void stepGently() {
    if (x<targetX) {
      x += ((targetX - x)/20);
    } else {
      x+= ((targetX - x)/20);
    }
    if (y<targetY) {
      y+= ((targetY - y)/20);
    } else {
      y+= ((targetY - y)/20);
    }
  } //End of stepGently()
  /*void step() {
    if (prevX<targetX) {
      x += ((targetX - prevX)/100);
    } else {
      x+= ((targetX - prevX)/100);
    }
    if (prevY<targetY) {
      y+= ((targetY - prevY)/100);
    } else {
      y+= ((targetY - prevY)/100);
    }
  } //End of step?*/
 public float getX(){
   return x; 
  }
} // End of the Ball Class
