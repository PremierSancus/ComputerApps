//explodin FIreworks program
//Globul Objects
Firewok[] firewok = new Firewok[40];
//Globul variobles

void setup() {
  //size(1600,800);
  fullScreen();
  //ScreenSizeTester();
  createBall();
}//end of setup

void draw() {
  background(0);
  //remember dank mode
  for (int i = 0; i<40; i++) {
    firewok[i].edgeDetection();
    firewok[i].move();
    firewok[i].classDraw();
  }
  
}//end of draw

void mousePressed() {
}//end of mousepressed
