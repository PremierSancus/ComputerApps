int   circleDiameter = width*1/8;
void GUI_Design() {
  background(white);
  fill(red);
  ellipse(width*1/4, height*3/4, circleDiameter, circleDiameter); // Circle #1
  fill(yellow);
  ellipse(width*3/4, height*3/4, circleDiameter, circleDiameter);// Circle #2
  fill(brown);
  rect(width*1/8, height*1/8, circleDiameter*2, circleDiameter*2); // Target Area #
  fill(green);
  rect(width*5/8, height*1/8, circleDiameter*2, circleDiameter*2);// Target Area #2
  fill(white);
}
