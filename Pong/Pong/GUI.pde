void StartScreenGUI () {
  //rect(displayWidth*
}
void GUILong () {
  
}
void tutorialScreen(){
  
}
void screenSizeChecker(){
  String fullSize = "Width: " + displayWidth + " Height: " + displayHeight;
  
  println(fullSize);
  if(displayWidth < 350 || displayHeight < 350 ) {
    println("ERROR:screen too small");
    exit();
  }
  
  if (displayWidth == displayHeight|| displayWidth>displayHeight) {
    ScreenIsVerticallyLong = false;
  }
  if (displayWidth<displayHeight) {
    ScreenIsVerticallyLong = true;
  }
}
