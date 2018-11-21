//Global Variables

void setup() {
  //fullScreen();
  size(1200, 900);
  textSetup();
  
  println("Start of Console");
  
  GUI_setup();
  
  // string, font, height, colour, AlignHorizontal, AlignVertical, rectX, rectY, rect_Width, rectHeight
 // textDraw(title, titleFont, height, #2C08FF, CENTER, CENTER, width*1/4, height*0, titleWidth, titleHeight); //Title
 // textDraw(footer, titleFont, height, #2C08FF, CENTER, CENTER, width*1/4, footerY, titleWidth, titleHeight); //Footer
 // textDraw("Something", titleFont, height, #2C08FF, CENTER, CENTER, width*1/10, height*3/10, titleWidth, titleHeight); //Footer
 // textDraw("Other thing", titleFont, height, #2C08FF, CENTER, CENTER, width*3/10, height* 5/10, titleWidth, titleHeight); //Footer
  textDraw("four", titleFont, height, #2C08FF, CENTER, CENTER,width*196/240,height*2/240,width*40/240,height*18/240); //Footer
  textDraw("tenLongWord", titleFont, height, #2C08FF, CENTER, CENTER, width*4/240,height*174/240,width*40/240,height*60/240);
}

void draw() {
}
