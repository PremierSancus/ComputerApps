//globul vuriubles
Boolean pauseScreen = false;
Boolean tutorialScreen = true;
color ylw = #E1FF05,gry = #747272;
PFont font1;

void setup() {
  fullScreen();
  //size(1000,500);

  screenSizeChecker();
  textSetup();
}

void draw() {
  if (tutorialScreen == true) {
    background(gry);
    textDraw(225, "Press SPACE to continue", font1, height, CENTER, CENTER, displayWidth *1/4, displayHeight *1/4, displayWidth *1/2, displayWidth*1/2);
    // tutorialScreen();
  }
}

void keyPressed() {
  if (tutorialScreen == true && key == ' ') {
    tutorialScreen = false;
    exit();
  }
}

void keyReleased() {
}

void mouseClicked() {
}
