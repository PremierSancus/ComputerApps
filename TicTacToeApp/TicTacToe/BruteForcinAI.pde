int E;
void BruteFocinAI(){
}
void EasyAITurn (){
   E = (int) random(0,8);
  if(noDraw[E] == false){
    xo("O",(E+1));
    noDraw[E] = true;
    turn++;
    AIMoves(E);
  }
  
}
void HarderAI()
{
  if(turn == 3)
  {
    if(boardPiece[4] == null)
    {
      
    }
    else
    {
      
    }
  }
}
void Impossible(){
  
}
