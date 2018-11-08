void xo(String text, int position){
  fill(0); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(castellar, 55); //Change the number until it fits, largest font size
  if (position == 1) {
    text(text, width*96/240,height*96/240,width*48/240,height*48/240);//box 7
  }
  if (position == 2) {
    text(text, width*144/240,height*96/240,width*48/240,height*48/240);//box 8
  }
  if (position == 3) {
    text(text,width*192/240,height*96/240,width*48/240,height*48/240);//box 9
  }
  if (position == 4) {
    text(text,width*96/240,height*144/240,width*48/240,height*48/240);// box 4
  }
  if (position == 5) {
    text(text, width*144/240,height*144/240,width*48/240,height*48/240);//box 5
  }
  if (position == 6) {
    text(text, width*192/240,height*144/240,width*48/240,height*48/240);//box 6
  }
  if (position == 7) {
    text(text, width*96/240,height*192/240,width*48/240,height*48/240);//box 1
  }
  if (position == 8) {
    text(text,width*144/240,height*192/240,width*48/240,height*48/240);//box 2
  }
  if (position == 9) {
    text(text,width*192/240,height*192/240,width*48/240,height*48/240);//box 3
  }
  fill(255); //Reset to white for rest of the program
}
