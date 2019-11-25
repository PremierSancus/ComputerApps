class Wall {
  float x;
  float y;
  float W;
  float H;
  float xMove;
  float rectHeight;
  float rectWidth;
  color colour;
  Wall(float x,float y,float W, float H, float wallHeight, float xMove, color c) {
    this.x = x;
    this.y = y;
    this.W = W;
    this.H = H;
    this.xMove = xMove;
    rectHeight = H*wallHeight;
    rectWidth = W/80;
    colour = c;
  }

  void move (){
    x+=xMove;
  }
  void classDraw() {
    fill(colour);
    rect(x, y,rectWidth,rectHeight);
  }
}
