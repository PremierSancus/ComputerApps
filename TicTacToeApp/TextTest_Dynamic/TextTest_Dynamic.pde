size(500,500);
String title="Wahoo!";
PFont titleFont;
String[] fontList = PFont.list(); // list all fonts available
println("Start of Console");
printArray(fontList);//For listing all possible fonts to choose,then createFont
titleFont = createFont("Arial",55);// must also Tools / Creat Font / FInd font press OK
rect(width*1/4,height*0,width*1/2,height*1/10);//top rectangle in mid
//fill(#F6FF00);
//textAlign(CENTER,CENTER);
//textSize(height*1/10);
//float textLength = width*1/2;
//for(float i=1; textwidth(title)>width*1/2; i=i-0.01) { //i=i-0.01 or i-=0.01
  //textLength = textLength*i;
  //textSize(textLength);
  //println("For" + textLength);}
  //Resizing Algorith
//textSize(textLength);
textFont(titleFOnt,50);
text(title,width*1/4,0,width*1/2,height*1/10);
fill(255);
