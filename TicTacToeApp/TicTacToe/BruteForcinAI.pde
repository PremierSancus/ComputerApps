int lP = 0;
int hP = 8;
void BruteFocinAI(){
  for(int i = 0; i<9;i++)
  {
    NotVacant[i] = false;
  }
}
void EasyAITurn (){
  int E = (int) random(lP,hP);
  if(NotVacant[E] == true){
    EasyAITurn();
  }
  if(NotVacant[E] == false){
    NotVacant[E] = true;
    xo("O",(E+1));
    noDraw[E] = true;
    turn++;
  }
  
}
