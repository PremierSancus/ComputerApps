class PaddlesClass {
  float x;
  float y;
  float rectWidth;
  float rectHeight;
  float yMove;
  color colour;
  PaddlesClass (float w, float h, float pX, float shift, float yMove, color colour) {
    //pX needs to be decimal cause trunkation
    this.yMove = yMove;
    float altitude = h*yMove/30;
    rectHeight = h*6/30;
    this.x = (w*pX)-(w*shift);
    this.y = h*12/30 + altitude;
    rectWidth = w/160;
    this.colour = colour;
  }

  //Procedures

  void classDraw() {
    fill(colour);
    rect(x, y, rectWidth, rectHeight);
  }
  //Getters and Setters
}
void PaddlePosition() {
  if (rightPaddleUp == true ) {
    yMove2 -= paddleSpeed;
  }
  if (rightPaddleDown == true) {
    yMove2 += paddleSpeed;
  }
  if (yMove2 <= -12 ) {
    yMove2 = -12;
  }
  if (displayHeight*yMove2/30 + displayHeight*12/30>= displayHeight-displayHeight*6/30 ) {
    yMove2 = 12;
  }
  if (leftPaddleUp == true ) {
    yMove1 -= paddleSpeed;
  }
  if (leftPaddleDown == true) {
    yMove1 += paddleSpeed;
  }
  if (yMove1 <= -12 ) {
    yMove1 = -12;
  }
  if (displayHeight*yMove1/30 + displayHeight*12/30 >= displayHeight-displayHeight*6/30 ) {
    yMove1 = 12;
  }
}
