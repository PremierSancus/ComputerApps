int AIM;
int E;
void BruteFocinAI(){
}
void EasyAITurn (){
  AttemptWin();
   E = (int) random(0,8);
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
  IT2();
  IT4XC();
  IT4OC();
}
void IT2(){
  if(turn == 2){
    if(boardPiece[4] == "X"){
      E = (int) random(0,8);
      if(noDraw[E] == false && E%2==0){
        xo("O",(E+1));
        noDraw[E] = true;
        turn++;
        AIMoves(E);
      }
    }
    if(boardPiece[4] != "X"){
      xo("O",(5));
      noDraw[4] = true;
      turn++;
      AIMoves(4);
    }
  }
}
void IT4XC(){// Impossible turn 4 X center
    if(turn == 4){
    for(int i = 0; i<9;i++)
    {
      {
        if(boardPiece[4] == "X" && boardPiece[i] == "X" && i%2 != 0)//if X is center and opponent picks side
        {
          if(i == 1 || i == 3)
          {
            E = 4-i;
            E = 4+E;
            if(noDraw [E] == false)
            {
              xo("O",(E+1));
              noDraw[E] = true;
              turn++;
              AIMoves(E);
            }
          }
          if(i == 5 || i ==7)
          {
            E = i-4;
            E = 4 + E;
            if(noDraw [E] == false)
            {
              xo("O",(E+1));
              noDraw[E] = true;
              turn++;
              AIMoves(E);
            }
          }
        }
        if(boardPiece[4] == "X" && boardPiece[i] == "X" && i%2 == 0 && i != 4)//if X is center and opponent picks corner
        {
          if(i == 0 || i == 2)
          {
            E = 4-i;
            E = 4+E;
            if(noDraw [E] == false)
            {
              xo("O",(E+1));
              noDraw[E] = true;
              turn++;
              AIMoves(E);
            }
            if(noDraw [E] == true)
            {
              E = (int) random(0,8);
              if(noDraw[E] == false && E%2==0)
              {
                xo("O",(E+1));
                noDraw[E] = true;
                turn++;
                AIMoves(E);
              }
            }
          }
          if(i == 6 || i == 8)
          {
            E = i-4;
            E = 4 + E;
            if(noDraw [E] == false)
            {
              xo("O",(E+1));
              noDraw[E] = true;
              turn++;
              AIMoves(E);
            }
            if(noDraw [E] == true)
            {
              E = (int) random(0,8);
              if(noDraw[E] == false && E%2==0)
              {
                xo("O",(E+1));
                noDraw[E] = true;
                turn++;
                AIMoves(E);
              }
            }
          }
        }
      }
    }
  }
}
void IT4OC(){ // IMpossible turn 4 "O" center
  if(turn == 4){
    BlockWin();
    
  }
  
}
void BlockWin()
{
  if(boardPiece[7] == "X")
  {
     if(boardPiece[8] =="X")
    { 
      if(noDraw[6] == false)
      {
        xo("O",(7));
        noDraw[6] = true;
        turn++;
        AIMoves(6);
      }
    }
  }
  if(boardPiece[6] == "X")
  {
     if(boardPiece[8] =="X")
    { 
      if(noDraw[7] == false)
      {
        xo("O",(8));
        noDraw[7] = true;
        turn++;
        AIMoves(7);
      }
    }
     if(boardPiece[7] =="X")
    { 
      if(noDraw[8] == false)
      {
        xo("O",(9));
        noDraw[8] = true;
        turn++;
        AIMoves(8);
      }
    }
  }
  if(boardPiece[5] == "X")
  {
     if(boardPiece[8] =="X")
    { 
      if(noDraw[2] == false)
      {
        xo("O",(3));
        noDraw[2] = true;
        turn++;
        AIMoves(2);
      }
    }
  }
  if(boardPiece[4] =="X")
  {
     if(boardPiece[8] =="X")
    { 
      if(noDraw[0] == false)
      {
        xo("O",(1));
        noDraw[0] = true;
        turn++;
        AIMoves(0);
      }
    }
     if(boardPiece[7] =="X")
    { 
      if(noDraw[1] == false)
      {
        xo("O",(2));
        noDraw[1] = true;
        turn++;
        AIMoves(1);
      }
    }
    
    if(boardPiece[5] =="X")
    { 
      if(noDraw[3] == false)
      {
        xo("O",(4));
        noDraw[3] = true;
        turn++;
        AIMoves(3);
      }
    }
     if(boardPiece[6] =="X")
    { 
      if(noDraw[2] == false)
      {
        xo("O",(3));
        noDraw[2] = true;
        turn++;
        AIMoves(2);
      }
    }
  }
  if(boardPiece[3] =="X")
  {
    if(boardPiece[4] =="X")
    { if(noDraw[5] == false){
      xo("O",(6));
      noDraw[5] = true;
      turn++;
      AIMoves(5);}
    }
    if(boardPiece[5] =="X")
    { if(noDraw[4] == false){
      xo("O",(5));
      noDraw[4] = true;
      turn++;
      AIMoves(4);}
    }
    if(boardPiece[6] =="X")
    { if(noDraw[0] == false){
      xo("O",(1));
      noDraw[0] = true;
      turn++;
      AIMoves(0);}
    }
  }
  if(boardPiece[2] =="X")
  {
    if(boardPiece[5] =="X")
    { if(noDraw[8] == false){
      xo("O",(9));
      noDraw[8] = true;
      turn++;
      AIMoves(8);}
    }
    if(boardPiece[8] =="X")
    { if(noDraw[5] == false){
      xo("O",(6));
      noDraw[5] = true;
      turn++;
      AIMoves(5);}
    }
    if(boardPiece[4] =="X")
    { if(noDraw[6] == false){
      xo("O",(7));
      noDraw[6] = true;
      turn++;
      AIMoves(6);}
    }
    if(boardPiece[6] =="X")
    { if(noDraw[4] == false){
      xo("O",(5));
      noDraw[4] = true;
      turn++;
      AIMoves(4);}
    }
  }
  if(boardPiece[1] =="X"){
    if(boardPiece[2] =="X")
    { if(noDraw[0] == false){
      xo("O",(1));
      noDraw[0] = true;
      turn++;
      AIMoves(0);}
    }//top horizon
    if(boardPiece[4] =="X")
    { if(noDraw[7] == false){
      xo("O",(8));
      noDraw[7] = true;
      turn++;
      AIMoves(7);}
    }
    if(boardPiece[7] =="X")
    { if(noDraw[4] == false){
      xo("O",(5));
      noDraw[4] = true;
      turn++;
      AIMoves(4);}
    }//middle vertical
  }
  if(boardPiece[0] == "X")
  {
    if(boardPiece[1] == "X")
    { if(noDraw[2] == false){
      xo("O",(3));
      noDraw[2] = true;
      turn++;
      AIMoves(2);}
    }
    if(boardPiece[2] == "X")
    { if(noDraw[1] == false){
      xo("O",(2));
      noDraw[1] = true;
      turn++;
      AIMoves(1);}
    }//top horizontal
    if(boardPiece[3] =="X")
    { if(noDraw[6] == false){
      xo("O",(7));
      noDraw[6] = true;
      turn++;
      AIMoves(6);}
    }
    if(boardPiece[6] =="X")
    { if(noDraw[3] == false){
      xo("O",(4));
      noDraw[3] = true;
      turn++;
      AIMoves(3);}
    }//left vertical
    if(boardPiece[4] =="X")
    { if(noDraw[4] == false){
      xo("O",(9));
      noDraw[8] = true;
      turn++;
      AIMoves(8);}
    }
    if(boardPiece[8] =="X")
    {
      if(noDraw[4] == false){
      xo("O",(5));
      noDraw[4] = true;
      turn++;
      AIMoves(4);}
    }//top left to bottom right
  }
}
void AttemptWin()
{
  if(boardPiece[7] == "O")
  {
    if(boardPiece[8] =="0")
    { 
      if(noDraw[6] == false)
      {
        xo("O",(7));
        noDraw[6] = true;
        turn++;
        AIMoves(6);
      }
    }
  }
  if(boardPiece[6] == "O")
  {
    if(boardPiece[8] =="0")
    { 
      if(noDraw[7] == false)
      {
        xo("O",(8));
        noDraw[7] = true;
        turn++;
        AIMoves(7);
      }
    }
    if(boardPiece[7] =="0")
    { 
      if(noDraw[8] == false)
      {
        xo("O",(9));
        noDraw[8] = true;
        turn++;
        AIMoves(8);
      }
    }
  }
  if(boardPiece[5] == "O")
  {
    if(boardPiece[8] =="0")
    { 
      if(noDraw[2] == false)
      {
        xo("O",(3));
        noDraw[2] = true;
        turn++;
        AIMoves(2);
      }
    }
  }
  if(boardPiece[4] == "O")
  {
    if(boardPiece[8] =="0")
    { 
      if(noDraw[0] == false)
      {
        xo("O",(1));
        noDraw[0] = true;
        turn++;
        AIMoves(0);
      }
    }
    if(boardPiece[7] =="0")
    { 
      if(noDraw[1] == false)
      {
        xo("O",(2));
        noDraw[1] = true;
        turn++;
        AIMoves(1);
      }
    }
    if(boardPiece[6] =="0")
    { 
      if(noDraw[2] == false)
      {
        xo("O",(3));
        noDraw[2] = true;
        turn++;
        AIMoves(2);
      }
    }
    if(boardPiece[5] =="0")
    { 
      if(noDraw[3] == false)
      {
        xo("O",(4));
        noDraw[3] = true;
        turn++;
        AIMoves(3);
      }
    }
  }
  if(boardPiece[3] =="O")
  {
    if(boardPiece[6] =="0")
    { 
      if(noDraw[0] == false)
      {
        xo("O",(1));
        noDraw[0] = true;
        turn++;
        AIMoves(0);
      }
    }
    if(boardPiece[5] =="0")
    { 
      if(noDraw[4] == false)
      {
        xo("O",(5));
        noDraw[4] = true;
        turn++;
        AIMoves(4);
      }
    }
    if(boardPiece[4] =="0")
    { 
      if(noDraw[5] == false)
      {
        xo("O",(6));
        noDraw[5] = true;
        turn++;
        AIMoves(5);
      }
    }
  }
  if(boardPiece[2] == "O")
  {
    if(boardPiece[8] =="0")
    { 
      if(noDraw[5] == false)
      {
        xo("O",(6));
        noDraw[5] = true;
        turn++;
        AIMoves(5);
      }
    }
    if(boardPiece[6] =="0")
    { 
      if(noDraw[4] == false)
      {
        xo("O",(5));
        noDraw[4] = true;
        turn++;
        AIMoves(4);
      }
    }
    if(boardPiece[5] =="0")
    { 
      if(noDraw[8] == false)
      {
        xo("O",(9));
        noDraw[8] = true;
        turn++;
        AIMoves(8);
      }
    }
    if(boardPiece[4] =="0")
    { 
      if(noDraw[6] == false)
      {
        xo("O",(7));
        noDraw[6] = true;
        turn++;
        AIMoves(6);
      }
    }
  }
  if(boardPiece[1] =="O")
  {
    if(boardPiece[7] =="0")
    { 
      if(noDraw[4] == false)
      {
        xo("O",(5));
        noDraw[4] = true;
        turn++;
        AIMoves(4);
      }
    }
    if(boardPiece[4] =="0")
    { 
      if(noDraw[7] == false)
      {
        xo("O",(8));
        noDraw[7] = true;
        turn++;
        AIMoves(7);
      }
    }
    if(boardPiece[2] =="0")
    { 
      if(noDraw[0] == false)
      {
        xo("O",(1));
        noDraw[0] = true;
        turn++;
        AIMoves(0);
      }
    }
  }
  if(boardPiece[0] == "O")
  {
    if(boardPiece[8] =="0")
    { 
      if(noDraw[4] == false)
      {
        xo("O",(5));
        noDraw[4] = true;
        turn++;
        AIMoves(4);
      }
    }
    if(boardPiece[4] =="0")
    { 
      if(noDraw[8] == false)
      {
        xo("O",(9));
        noDraw[8] = true;
        turn++;
        AIMoves(8);
      }
    }
    if(boardPiece[6] =="0")
    { 
      if(noDraw[3] == false)
      {
        xo("O",(4));
        noDraw[3] = true;
        turn++;
        AIMoves(3);
      }
    }
    if(boardPiece[3] =="0")
    { 
      if(noDraw[6] == false)
      {
        xo("O",(7));
        noDraw[6] = true;
        turn++;
        AIMoves(6);
      }
    }
    if(boardPiece[2] =="0")
    { 
      if(noDraw[1] == false)
      {
        xo("O",(2));
        noDraw[1] = true;
        turn++;
        AIMoves(1);
      }
    }
    if(boardPiece[1] =="0")
    { 
      if(noDraw[2] == false)
      {
        xo("O",(3));
        noDraw[2] = true;
        turn++;
        AIMoves(2);
      }
    }
  }
}
