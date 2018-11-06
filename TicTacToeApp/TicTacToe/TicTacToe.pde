// Global Variables
color regularButton = #FFFFFF;
color hoverOverButton = #FF0A2B;
String quit= "Quit";
PFont titleFont;


void setup() {
  size(1200, 900); //To Illustrate use of Display Geometry
  //fullScreen(); //uses displayWidth and displayHeight
  println("Screen Width:", displayWidth, "\tHeight:", displayHeight);
  println("Starting of Console"); // If you cannot see this, the find another way to see the list on the program
  titleFont = createFont ("Arial", 55); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
  
  background(255);
  
  line(0,height*24/240,width*240/240,height*24/240);//line G
  line(0,height*96/240,width*48/240,height*96/240);//line H
  line(0,height*168/240,width*48/240,height*168/240);//line I
  line(width*48/240,0,width*48/240,height*240/240);//line j1/B
  line(width*96/240,height*0/240,width*96/240,height*24/240);//line C
  line(width*144/240,height*0/240,width*144/240,height*24/240);//line D
  line(width*192/240,height*0/240,width*192/240,height*24/240);//line E
  
  rect(width*4/240,height*30/240,width*40/240,height*60/240);//Easy button
  rect(width*4/240,height*102/240,width*40/240,height*60/240);//Hard button
  rect(width*4/240,height*174/240,width*40/240,height*60/240);//Impossible button
  
  rect(width*4/240,height*2/240,width*40/240,height*18/240);//screenshot button rectangle
  rect(width*52/240,height*2/240,width*40/240,height*18/240);//player 1 button rectangle
  rect(width*100/240,height*2/240,width*40/240,height*18/240);//restart button rectangle
  rect(width*148/240,height*2/240,width*40/240,height*18/240);//2 player button rectangle
  
  rect(width*56/240,height*101/240,width*36/240,height*139/240);//records moves of current game rectangle
  rect(width*56/240,height*96/240,width*36/240,height*15/240);//Just a place to put the name Moves
  
  rect(width*96/240,height*96/240,width*240/240,height*240/240);//where the actual game goes rectangle
  rect(width*96/240,height*96/240,width*48/240,height*48/240);//box 7
  rect(width*144/240,height*96/240,width*48/240,height*48/240);//box 8
  rect(width*192/240,height*96/240,width*48/240,height*48/240);//box 9
  rect(width*96/240,height*144/240,width*48/240,height*48/240);//box 4
  rect(width*144/240,height*144/240,width*48/240,height*48/240);//box 5
  rect(width*192/240,height*144/240,width*48/240,height*48/240);//box 6
  rect(width*96/240,height*192/240,width*48/240,height*48/240);//box 1
  rect(width*144/240,height*192/240,width*48/240,height*48/240);//box 1
  rect(width*192/240,height*192/240,width*48/240,height*48/240);//box 1
 
  rect(width*56/240,height*24/240,width*80/240,height*25/240);//scoreboard for player X
  rect(width*152/240,height*24/240,width*80/240,height*25/240);//scoreboard for player O
  rect(width*81/240,height*27/240,width*40/240,height*19/240);//score for x
  rect(width*174/240,height*27/240,width*40/240,height*19/240);//score for O
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
  fill(#FFDA03); //Purple Ink, copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: LEFT | CENTER | RIGHT & TOP | CENTER | BOTTOM | BASELINE
  textFont(titleFont, 35); //Change the number until it fits, largest font size
  text(quit,width*196/240,height*2/240,width*40/240,height*18/240);
  fill(255); //Reset to white for rest of the program
}

//Listener
void mouseClicked () {
  if (mouseX>width*196/240 && mouseX<width && mouseY>0 && mouseY<height*20/240) {
    exit();
  }
} //End mouseClicked
