void textSetup() {
  title= "I2E456789012";
  titleWidth = width*1/2;
  titleHeight = height*1/10;
  //footerHeight; 
  titleFontSize = height;
  titleFontString = "Harrington";
  titleFontDecrease = 1; //67%, 200|300; 57%, 200|200; 18%, 600|200;

  //printArray(fontList); //For listing all possible fonts to choose, then createFont
  titleFont = createFont ("Harrington", height); // //Must also Tools / Create Font / Find Font / Do Not Press "OK"
}

void textDraw() {
  fill(#2C08FF); //Blue Ink, copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: LEFT | CENTER | RIGHT & TOP | CENTER | BOTTOM | BASELINE

  //Reference to Text Calculator
  titleFontSize = textCalculator(titleFontSize, title, titleWidth);

  textFont(titleFont, titleFontSize); //Change the number until it fits, largest font sizetextFont(titleFont, titleFontSize); //Change the number until it fits, largest font size //titleFontSize
  text(title, width*1/4, height*0, titleWidth, titleHeight);
  fill(255); //Reset to white for rest of the program
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
