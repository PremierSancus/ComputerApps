//globul variables

void setup() {
  size(600, 500);//
  //screenSizeTester();
}//end setup
void draw () {
  background(0);//greyscale black is less mem
  fill(255);//white greyscale
  noStroke();//remove teh outline of teh ball
  ellipse(ball.x,ball.y,ball.diameter,ball.diameter);//
  stroke(1);//reset noStroke to defaultl parameter
  fill(0);//reset to default black
}//end draw
void mousePressed () {
}//end mousePressed
void keyPressed () {
}//end keyPressed
