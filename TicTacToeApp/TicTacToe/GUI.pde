  void GUI(){
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
  
  rect(width*56/240,height*81/240,width*36/240,height*20/240); //text place for string moves
  rect(width*56/240,height*101/240,width*36/240,height*139/240);//records moves of current game
  
  rect(width*96/240,height*96/240,width*240/240,height*240/240);//where the actual game goes rectangle

 
  rect(width*56/240,height*24/240,width*80/240,height*25/240);//scoreboard for player X
  rect(width*152/240,height*24/240,width*80/240,height*25/240);//scoreboard for player O
  rect(width*81/240,height*27/240,width*40/240,height*19/240);//score for x
  rect(width*174/240,height*27/240,width*40/240,height*19/240);//score for O
  }
