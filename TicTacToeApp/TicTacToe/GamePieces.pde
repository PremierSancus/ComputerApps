void gamePieces() {
  boardPiece[0] = null;//irst Corner, left
  boardPiece[1] = null; //First Middle //"O"
  boardPiece[2] = null; //First Corner, right
  boardPiece[3] = null; //Second Corner, left
  boardPiece[4] = null; //Second Middle //
  boardPiece[5] = null; //Second Corner, right
  boardPiece[6] = null; //Third Corner, left
  boardPiece[7] = null; //Third Middle //"O"
  boardPiece[8] = null; //Third Corner, right

  
}

void onlyX() {
  for (int i=0; i<numberOfBoardPieces; i++) {
    if (boardPiece[i] == "X") {
      onlyXPiece[i] = "X";
    }
  }
}

void onlyO() {
  for (int i=0; i<numberOfBoardPieces; i++) {
    if (boardPiece[i] == "O") {
      onlyOPiece[i] = "O";
    }
  }
}
