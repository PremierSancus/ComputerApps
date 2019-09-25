//globul vuriubles
Boolean startScreen = true;Boolean tutorialScreen = false;Boolean ScreenIsVerticallyLong;
color ylw = #E1FF05;
PFont font1;

void setup() {
  fullScreen();
  //size(1000,500);
  screenSizeChecker();
  textSetup();
 
}

void draw() {
  if (ScreenIsVerticallyLong == false) {
    
  }
  if(tutorialScreen == true){
    tutorialScreen();
  }
}

void keyPressed() {
  if (startScreen == true) {
      startScreen = false;
      tutorialScreen = true;
    }
  }

void keyReleased() {
}

void mouseClicked() {
}
