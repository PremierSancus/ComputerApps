void createBall() {
  for (int i = 0; i < firewok.length; i++) {
    float xLocation = random(0,displayWidth);//random(width);
    float yLocation = 0;//random(height);
    float xSpeed = random(-10,10);
    float ySpeed = random(-30,5);
    float diameter = random(5,25);
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
    firewok[i] = new Firewok(xLocation, yLocation,xSpeed,ySpeed,diameter );
  }
}
