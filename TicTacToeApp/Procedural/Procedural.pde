//Global Variables
String title;
PFont titleFont;
float titleWidth;
float titleHeight;
float titleFontSize;
//String[] fontList = PFont.list(); //To list all fonts available on system
String titleFontString;
float titleFontDecrease;
float footerHeight;

void setup() {
  //fullScreen();
  size(600, 600);
  textSetup();
  
  println("Start of Console");
  
  GUI_setup();

}

void draw() {
  textDraw(); //Title
  //textDraw(); //Footer
  
  
}

/*
if (titleFontString == "Harrington") {
 titleFontSize = titleFontSize * titleFontDecrease;
 }
 
 println(title);
 println(title.length());
 
/* Example Adding Spaces
 title = title + " ";
 println(title);
 println(title.length());
 */
