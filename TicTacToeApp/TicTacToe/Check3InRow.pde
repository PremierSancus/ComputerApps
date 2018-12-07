void check3InRow() {
  for (int i=0; i<triggerPieces; i++) {
    if (trigger[i] != null) {
      check3InRowX = true;
      check3InRowO = true;
    }
  }

  if (check3InRowX == true) {
    winX = checkNestedFor("X", onlyXPiece);
  }
  
  if (check3InRowO == true) {
    winO = checkNestedFor("O", onlyOPiece);
  }
  
  println("X's won:", winX);
  println("O's won:", winO);
}
