void StartScreenGUI () {
 //rect(displayWidth*
}void GUILong () {
}
void tutorialScreen() {
}
void screenSizeChecker() {
  String fullSize = "Width: " + displayWidth + " Height: " + displayHeight;

  println(fullSize);
  if (displayWidth < 350 || displayHeight < 350 ) {
    println("ERROR:screen too small");
    exit();
  }
  float checker = float (displayHeight) /float(displayWidth);
  if (checker > 1.425) {
    exit();
  }
}
