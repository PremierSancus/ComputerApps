void createBall() {
  for (int i = 0; i < 40; i++) {
    float xLocation = random(width);
    float yLocation = random(height);
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
    firewok[i] = new Firewok(xLocation, yLocation,225 );
  }
}
