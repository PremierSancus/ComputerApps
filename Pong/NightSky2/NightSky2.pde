private Boolean start = false;
private Star[] stars = new Star[Star.starCount]; //only varaibles is how many stars to draw
int count = 0;
int Xerror = 0;
int Yerror = 0;
Boolean blackholeMode = false;
public void setup() {
  size(1600, 1000);
  screenSizeTester();
  ellipseMode(CENTER);

  //Need drawing of ball before mouseClick(), two lines of the same code
  createStars();
} //End of setup()

public void draw() {
  startStop();

  if (start==true) {

    background(0);
    fill(255);
    //rect(0,0,width*1/2,height);
    for (int i = 0; i < stars.length; i++) {
      if (stars[i].getX()+(stars[i].getRadius())/2 >= width || stars[i].getX()-(stars[i].getRadius())/2 <= 0) {
        stars[i].xBounce = -1;
      }
      if (stars[i].getY()+(stars[i].getRadius())/2 >= height || stars[i].getY()-(stars[i].getRadius()) <= 0) {
        stars[i].yBounce = -1;
      }
      stars[i].stepGently();
      rect(stars[i].getX(), stars[i].getY(), stars[i].getRadius(), stars[i].getRadius());
    }
    count++;
    if (count == 120) {
      createStars();
      count = 1;     
      blackholeMode = false;
      for (int i = 0; i < stars.length; i++) {
        stars[i].targetX = mouseX;      
        stars[i].targetY = mouseY ;
      }
      println("X:" + Xerror + " Y:" + Yerror);
    }
  } //End of startStop
} //End draw()

public void mousePressed() {
} //End of mouseClicked()
