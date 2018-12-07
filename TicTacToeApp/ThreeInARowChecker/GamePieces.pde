int numberOfBoardPieces = 9;
String[] boardPiece = new String[numberOfBoardPieces];
String[] onlyXPiece = new String[numberOfBoardPieces];
String[] onlyOPiece = new String[numberOfBoardPieces];

// "X" or "O" or null
// Test 1:X, 3:X, 5:X (Math will see as a win unless answers are limited

void gamePieces() {
  boardPiece[0] = "X";//irst Corner, left
  boardPiece[1] = "O"; //First Middle //"O"
  boardPiece[2] = "X"; //First Corner, right
  boardPiece[3] = "X"; //Second Corner, left
  boardPiece[4] = "O"; //Second Middle //
  boardPiece[5] = "O"; //Second Corner, right
  boardPiece[6] = "X"; //Third Corner, left
  boardPiece[7] = null; //Third Middle //"O"
  boardPiece[8] = null; //Third Corner, right

  onlyX();
  onlyO();
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
