// Global Variables
color regularButton = #FFFFFF;
color hoverOverButton = #FF0A2B;
String quit= "Quit";
String playerOne = "Player 1";
String playerTwo = "Player 2";
String restart = "Restart";
String screenshot = "Screenshot";
String easy = "EASY";
String hard = "HARD";
String impossible = "IMPOSSIBLE";
String moves = "MOVES";
String x = "X";
String o = "O";
PFont arial;
PFont algerian;


void setup() {
  size(1200, 900); //To Illustrate use of Display Geometry
  //fullScreen(); //uses displayWidth and displayHeight
  println("Screen Width:", displayWidth, "\tHeight:", displayHeight);
  println("Starting of Console"); // If you cannot see this, the find another way to see the list on the program
  arial = createFont ("Arial", 55); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
  algerian = createFont ("Algerian",55);
  background(255);
  
  GUI();
}

void draw() {
  println ("Mousex:", mouseX, "\tMouseY:", mouseY);
  
  if (mouseX>width*196/240 && mouseX<width && mouseY>0 && mouseY<height*20/240) { //Hover Over
    fill(hoverOverButton);
    rect(width*196/240,height*2/240,width*40/240,height*18/240);
  } else {
    fill(regularButton);
    rect(width*196/240,height*2/240,width*40/240,height*18/240);
  }
  //Text in Quit Button
  fill(#FFDA03); //Yellow Ink, copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: LEFT | CENTER | RIGHT & TOP | CENTER | BOTTOM | BASELINE
  textFont(arial, 35); //Change the number until it fits, largest font size
  text(quit,width*196/240,height*2/240,width*40/240,height*18/240);
  text(playerOne,width*52/240,height*2/240,width*40/240,height*18/240);
  text(playerTwo,width*148/240,height*2/240,width*40/240,height*18/240);
  text(restart,width*100/240,height*2/240,width*40/240,height*18/240);
  text(screenshot,width*4/240,height*2/240,width*40/240,height*18/240);
  textFont(algerian, 55);
  text(easy,width*4/240,height*30/240,width*40/240,height*60/240);
  text(hard,width*4/240,height*102/240,width*40/240,height*60/240);
  textFont(algerian,33);
  text(impossible,width*4/240,height*174/240,width*40/240,height*60/240);
  textFont(arial,33);
  text(moves,width*56/240,height*96/240,width*36/240,height*15/240);
  textFont(arial,80);
  textAlign (LEFT,CENTER);
  text(x,width*66/240,height*24/240,width*80/240,height*25/240);
  text(o,width*158/240,height*24/240,width*80/240,height*25/240);
  
}

//Listener
void mouseClicked () {
  if (mouseX>width*196/240 && mouseX<width*236/240 && mouseY>0 && mouseY<height*20/240) {
    exit();
  }
} //End mouseClicked
