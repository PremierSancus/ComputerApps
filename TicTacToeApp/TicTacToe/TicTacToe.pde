color regularButton = #FFFFFF,hoverOverButton = #FF0A2B,whiteButton = #BFBFBF;
String quit= "Quit",playerOne = "Player 1",playerTwo = "Player 2",restart = "Restart",screenshot = "Screenshot";
String easy = "EASY",hard = "HARD",impossible = "IMPOSSIBLE",moves = "MOVES",x = "X",o = "O";
PFont arial,algerian;
PImage opic,xpic;

void setup() {
  size(1200, 900); //To Illustrate use of Display Geometry
  //fullScreen(); //uses displayWidth and displayHeight
  println("Screen Width:", displayWidth, "\tHeight:", displayHeight);
  println("Starting of Console"); // If you cannot see this, the find another way to see the list on the program
  arial = createFont ("Arial", 55); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
  algerian = createFont ("Algerian",55);
  background(255);
  
  GUI();
  opic = loadImage("O.png"); //Dimensions: 259 Width, 194 Height
  xpic = loadImage("X.png"); //Dimensions: 860 Width, 529 Height
}

void draw() {
  thingsInDraw();
  
}

//Listener
void mouseClicked () {
  thingsInMouseClicked();
} //End mouseClicked
