int numberOfBoardPieces = 9;
String[] boardPiece = new String[numberOfBoardPieces];
String[] onlyXPiece = new String[numberOfBoardPieces];
String[] onlyOPiece = new String[numberOfBoardPieces];
void GamePieces (){
 boardPiece[0] = null; // First corner piece, top left 
 boardPiece[1] = "X"; // top middle
 boardPiece[2] = null; // top right
 boardPiece[3] = "X"; // middle left
 boardPiece[4] = null; // middle 
 boardPiece[5] = "X"; // midle left
 boardPiece[6] = null; // bottom rigth
 boardPiece[7] = null; // bottom middl
 boardPiece[8] = null; // bottom left

 onlyX();
 onlyO();

}

void onlyX()
{
  for(int i = 0; i < numberOfBoardPieces; i++)
  {
    if (boardPiece[i] == "X")
    {
    onlyXPiece[i] = "X";
    }
  }
}
void onlyO()
{
  for(int i = 0; i < numberOfBoardPieces; i++)
  {
    if (boardPiece[i] == "O")
    {
    onlyOPiece[i] = "O";
    }
  }
}
