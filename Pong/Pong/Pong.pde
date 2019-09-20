//globul vuriubles
Boolean startScreen = true;
color ylw = #E1FF05;
PFont titleFont;
String title;
float titleWidth;
float titleHeight;
String footer;
float footerY;

void setup() {
  fullScreen();
  textSetup();
  if (startScreen == true) {
    GUI ();
    textDraw(ylw, title, titleFont, height, CENTER, CENTER, width*1/4, height*0, titleWidth, titleHeight);//left center right/ top center bottom
    textDraw(ylw, footer, titleFont, height, CENTER, CENTER, width*1/4, footerY, titleWidth, titleHeight);
  }
}

void draw() {
  if (startScreen == true) {
  }
}

void keyPressed() {
  if (startScreen == true) {
    if (key == ' ') {
      //startScreen = false;
      exit();
    }
  }
}
void keyReleased() {
}

void mouseClicked() {
}
