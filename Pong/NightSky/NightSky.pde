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
      stars[i].stepGently();
      ellipse(stars[i].getX(), stars[i].getY(), stars[i].getRadius(), stars[i].getRadius());
    }
    count++;
    if (count == 120) {
      createStars();
      count = 0;
      blackholeMode = false;
      println("X:" + Xerror + " Y:" + Yerror);
    }
  } //End of startStop
} //End draw()

public void mousePressed() {
  for (int i = 0; i < stars.length; i++) {
    stars[i].targetX = mouseX;
    stars[i].targetY = mouseY ;
    stars[i].prevX = stars[i].getX();
    stars[i].prevY = stars[i].getY();
  }
} //End of mouseClicked()
