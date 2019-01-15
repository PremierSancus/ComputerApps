int lP = 0;
int hP = 8;
void BruteFocinAI(){
  for(int i = 0; i<9;i++)
  {
    AIMoved[i] = false;
  }
}
void EasyAITurn (){
  int E = (int) random(lP,hP);
  if(AIMoved[E] == true){
    EasyAITurn();
  }
  
}
