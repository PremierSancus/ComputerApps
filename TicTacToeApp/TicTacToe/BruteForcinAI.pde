int lP = 0;
int hP = 8;
void BruteFocinAI(){
}
void EasyAITurn (){
  int E = (int) random(lP,hP);
  if(noDraw[E] == true && turn <10){
    EasyAITurn();
  }
  if(noDraw[E] == false){
    xo("O",(E+1));
    noDraw[E] = true;
    turn++;
  }
  
}
