void reset(){
  turn = 1;
  for(int i = 0; i < 9; i++){
    noDraw[i] = false;
    boardPiece[i] = null;
    onlyXPiece[i] = null;
    onlyOPiece[i] = null;

    }
  position = 0;
  winX = false;
  check3InRowX = false;
  winO = false;
  check3InRowO = false;
  
  rect(width*96/240,height*96/240,width*48/240,height*48/240);//box 7
  rect(width*144/240,height*96/240,width*48/240,height*48/240);//box 8
  rect(width*192/240,height*96/240,width*48/240,height*48/240);//box 9
  rect(width*96/240,height*144/240,width*48/240,height*48/240);//box 4
  rect(width*144/240,height*144/240,width*48/240,height*48/240);//box 5
  rect(width*192/240,height*144/240,width*48/240,height*48/240);//box 6
  rect(width*96/240,height*192/240,width*48/240,height*48/240);//box 1
  rect(width*144/240,height*192/240,width*48/240,height*48/240);//box 2
  rect(width*192/240,height*192/240,width*48/240,height*48/240);//box 3
  
  rect(width*56/240,height*909/2160,width*36/240,height*139/2160);//records moves of current game 1
      rect(width*56/240,height*1048/2160,width*36/240,height*139/2160);//records moves of current game 2
      rect(width*56/240,height*1187/2160,width*36/240,height*139/2160);//records moves of current game 3
      rect(width*56/240,height*1326/2160,width*36/240,height*139/2160);//records moves of current game 4
      rect(width*56/240,height*1465/2160,width*36/240,height*139/2160);//records moves of current game 5 
      rect(width*56/240,height*1604/2160,width*36/240,height*139/2160);//records moves of current game 6
      rect(width*56/240,height*1743/2160,width*36/240,height*139/2160);//records moves of current game 7
      rect(width*56/240,height*1882/2160,width*36/240,height*139/2160);//records moves of current game 8
      rect(width*56/240,height*2021/2160,width*36/240,height*139/2160);//records moves of current game 9   
}
