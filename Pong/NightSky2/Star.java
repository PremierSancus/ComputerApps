class Star {
  private float x;
  private float y;
  private float radius;
  float targetX;
  float targetY;
  float prevX;
  float prevY;
  float xBounce;
  float yBounce;
  public static int starCount = 40;//Number of stars or Pong Balls that will be drawn
  public static int maxRadius = 20; //can this be a ratio of width with error checking of different geometery

  public Star(float x, float y, float radius) {
    this.x = x;
    this.y = y;
    this.radius = radius;
    xBounce = 1;
    yBounce = 1;
    targetX = x;
    targetY = y;
  }
  void stepGently() {
    if (x<targetX) {
      x -= ((targetX - x)/20) * xBounce;
    } else {
      x-= ((targetX - x)/20) * xBounce ;
    }
    if (y<targetY) {
      y-= ((targetY - y)/20)* yBounce;
    } else {
      y-= ((targetY - y)/20)* yBounce;
    }
  }//End of Constructor

  public float getX() {
    return x;
  }
  public float getY() {
    return y;
  }
  public float getRadius() {
    return radius;
  }
} //End of Start
