int triggerPieces = 5;
String[] trigger = new String[triggerPieces];
void Trigger(){
  if (boardPiece[1] != null || boardPiece[3] != null || boardPiece[4] != null || boardPiece[5] != null || boardPiece[7] != null) {
    println("iz triggering boyz");
    if (boardPiece[1] != null) {
      trigger[0] = boardPiece[1];
    }
        if (boardPiece[1] != null) {
      trigger[1] = boardPiece[3];
    }
        if (boardPiece[1] != null) {
      trigger[2] = boardPiece[4];
    }
        if (boardPiece[1] != null) {
      trigger[3] = boardPiece[5];
    }
        if (boardPiece[1] != null) {
      trigger[4] = boardPiece[7];
    }
  } else {
    println("Fuck Y'all dumb shits some of mid iz empty.");
  }
  
  
  
}
