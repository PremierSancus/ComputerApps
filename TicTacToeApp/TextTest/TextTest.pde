size(500,500);
String title="Wahoo!";
PFont titleFont;
String[] fontList = PFont.list(); // list all fonts available
println("Start of Console");
printArray(fontList);//For listing all possible fonts to choose,then createFont
titleFont = createFont("Arial",55);// must also Tools / Creat Font / FInd font press OK
rect(width*1/4,height*0,width*1/2,height*1/10);//top rectangle in mid
