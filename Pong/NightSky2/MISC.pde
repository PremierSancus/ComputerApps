void screenSizeTester() {

  final String fullSize = "Width=" + displayWidth + "; Height=" + displayHeight; //Another example of String Concatenation, used locally here

  if (width > displayWidth) { 
    println ("ERROR: Change Pong Table size-width, it is too big."); 
    exit(); //Will continue to the end of the program, and then exit (See Processing Reference)
  }
  if (height > displayHeight) { 
    println ("ERROR: Change Pong Table size-height, it is too big"); 
    exit();
  }

  //Debug: square vs. rectangle code
  if (width == height) {
    println ("Full Screen Debugging: ", fullSize); //Used to compare against manually entered canvas size
    println ("ERROR: The Canvas is a Square causing problems with the ball bouncing. Width & Height are " + width + ", " + height); //Used to compare against manually entered canvas size
    println ("Please adjust on line, function 'size'.");
    println ("Do not size larger than the monitor: ", fullSize);
    exit(); //Used to exit the canvas, incorrectly puts the user reponsible for the coding
  }
}//end of screenSizeTester
/*void drawBall(color ball, float x, float y, float diameter) {
 fill(ball); //White, greyscale for less memory
 noStroke(); //Remove the outline of the Ball
 ellipse(x, y, diameter, diameter); //Parameters 
 stroke(1); // Reset noStroke() to default parameter
 fill(0); //Reset to default black
 }//end drawBall*/
void createStars() {
  for (int i = 0; i < stars.length; i++) {
    float xLocation = random(width);
    float yLocation = random(height);
    float radiusSize = random(5, Star.maxRadius);
    if (xLocation >= width-radiusSize) {
      xLocation = width-radiusSize/2;
    }
    if (xLocation <= radiusSize) {
      xLocation = radiusSize/2;
    }
    if (yLocation >= height-radiusSize) {
      yLocation = height-radiusSize/2;
    }
    if (yLocation <= radiusSize) {
      yLocation = radiusSize/2;
    }    
    stars[i] = new Star(xLocation, yLocation, radiusSize);
  }
  // ballChecker();
}
