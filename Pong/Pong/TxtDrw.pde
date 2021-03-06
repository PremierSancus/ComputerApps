void textSetup(){
  
  font1 = createFont ( "Harrington", displayHeight);
  font2 = createFont ( "ACaslonPro-Bold",displayHeight);
  
}
void textDraw( color daColor, String string, PFont font, float height, int alignHorizontal, int alignVertical, float rectX, float rectY, float rectWidth, float rectHeight) {
  float fontSize = height;
  fill(daColor);
  textAlign (alignHorizontal, alignVertical);
  if (string.length() >= 13) {
    fontSize = textCalculator(height, string, rectWidth);
  }
  if (string.length() == restart.length()) {
    fontSize = fontSize * 0.6;
  }
  if (string.length() == lightmode.length()) {
    fontSize = fontSize * 0.6;
  }
  if (string.length() == "casual".length()) {
    fontSize = fontSize * 0.7;
  }
  if (string.length() == "not casual".length()) {
    fontSize = fontSize * 0.7;
  }
  if (string.length() == exit.length()) {
    fontSize =fontSize * 0.05;
  } else {
    //Catch for string less than 13 characters
    fontSize = fontSize * 0.08; //Change number as needed
  }

  textFont(font, fontSize); //Change the number until it fits, largest font sizetextFont(titleFont, titleFontSize); //Change the number until it fits, largest font size //titleFontSize
  text(string, rectX, rectY, rectWidth, rectHeight);
  fill(225);
}
float textCalculator(float size, String string, float rectWidth) {
  float i = 1;
  textSize(size); //For textWidth Sizing
  while (textWidth(string) > rectWidth) {
    size = size * i;
    textSize (size);
    i = i - 0.0001;
  }
  return size; //Purpose of Calculator
}
void screenSizeChecker() {

  //String fullSize = "DisplayWidth= " + width + "; DisplayHeight= " + height;
  //Concatenated String
  //println (fullSize);

  if (width < 350) { //Width checker, displayWidth < 350
    println("ERROR: This program will not work on this display, the width is too small.");
  }

  float checker = float (height) / float (width); //Ratio for overall layout quality
  //displayWidth / displayHeight
  //println(checker);

  if (checker > 1.4) {//Height Checker
    println("ERROR: This program will not work on this display, the height is too small.");
      exit();
  }
}
