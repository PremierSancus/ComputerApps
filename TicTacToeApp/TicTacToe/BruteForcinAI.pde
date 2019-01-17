int lP = 0;
int hP = 8;
int E;
void BruteFocinAI(){
}
void EasyAITurn (){
   E = (int) random(lP,hP);
  if(noDraw[E] == false){
    xo("O",(E+1));
    noDraw[E] = true;
    turn++;
    AIMoves(E);
  }
  
}
void HarderAI(){
  
}
void Impossible(){
  
}
