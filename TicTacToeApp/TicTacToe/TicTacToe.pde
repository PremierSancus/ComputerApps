//globul barioballs
color regularButton = #FFFFFF,hoverOverButton = #FF0A2B,whiteButton = #BFBFBF,yellow = #FFDA03;
String quit= "Quit",playerOne = "Player 1",playerTwo = "Player 2",restart = "Restart",screenshot = "Screenshot";
String easy = "EASY",hard = "HARD",impossible = "IMPOSSIBLE",moves = "MOVES",x = "X",o = "O";
String[] movePositions = {"","Top Lft","Top Mid","Top Rgt","Mid Lft","Mid Mid","Mid Rgt","Bot Lft","Bot Mid","Bot Rgt"};
Boolean[] noDraw = new Boolean[9]; //Turn off ablity to draw an X or an O in a sqaure of the boar
Boolean check3InRowX = false, check3InRowO = false, winX = false, winO = false;
int xScore = 0, oScore = 0, turn = 1, position, xOne,yOne,xTwo,yTwo,numberOfBoardPieces = 9,triggerPieces = 5;
String[] trigger = new String[triggerPieces];
String[] boardPiece = new String[numberOfBoardPieces];
String[] onlyXPiece = new String[numberOfBoardPieces];
String[] onlyOPiece = new String[numberOfBoardPieces];
PFont arial,algerian,castellar;
PImage opic,xpic;
float geometry;

void setup() {
  //size(1200, 900); //To Illustrate use of Display Geometry
  fullScreen(); //uses displayWidth and displayHeight
  println("Screen Width:", displayWidth, "\tHeight:", displayHeight);
  println("Starting of Console"); // If you cannot see this, the find another way to see the list on the program
  arial = createFont ("Arial", 55); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
  algerian = createFont ("Algerian",55);
  castellar = createFont ("Castellar",55);
  background(255);
  
  GUI();
  
  for(int i=0; i < noDraw.length; i++) {
    noDraw[i] = false;
  }

}

void draw() {
  thingsInDraw();
  
}

//Listener
void mouseClicked () {
  xoDraw();
  thingsInMouseClicked();
} //End mouseClicked
