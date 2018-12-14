Boolean Circle1Move = false;
color green = #29AF05, red = #B90000, brown = #6C3600, yellow = #D1FF0A, white = #FFFFFF;

void setup() {
  size(800, 600);
  screenSizeChecker();
  GUI_Design();
  
}

void draw() {
  if(Circle1Move == true) {
    GUI_Design();fill(red);
  ellipse(mouseX, mouseY, circleDiameter, circleDiameter); // Circle #1
  }
  
}

void mouseClicked() {
  if(Circle1Move = false && mouseX >width*1/4-circleDiameter && mouseX <width*1/4+circleDiameter && mouseY >height*3/4-circleDiameter && mouseY <height*3/4+circleDiameter );{
    Circle1Move = true;
  }
  if(Circle1Move = true && mouseX >width*1/8 && mouseX < && mouseY >height*1/8 && mouseY < );{
    
  }
  
}
