boolean check3InRowX = false;
boolean check3InRowO = false;
void check3InRow()
{
  for(int i = 0; i <= 4; i++)
  {
    if (trigger != null) 
    {
      check3InRowX = true;
      check3InRowO = true;
    }
  }
  if (check3InRowX == true) 
  {
    for(int i = 3; i < 6; i++)
    {
      for(int j = 0; j<3; j++) 
      {
        if (((1-j)+1)==6||((1-j)+1)== 7||((1-j)+1)==8||((3-j)+3)== 6||((3-j)+3)== 7||((3-j)+3)==8||((4-j)+4)==6||((4-j)+4)==7||((4-j)+4)==8||((5-j)+5)==6||((5-j)+5)==7||((5-j)+5)==8||((7-j)+7)==6||((7-j)+7)==7||((7-7)+1)==8) 
        {
          if (onlyXPiece[i] == "X" && onlyXPiece[j] == "X" && onlyXPiece[(i*2)-j] == "X")
          {
            println("win X");
          }
          if (onlyXPiece[1] == "X" && onlyXPiece[j] == "X" && onlyXPiece[2-j] == "X") 
          {
            println("win X");
          }
          if (onlyXPiece[7] == "X" && onlyXPiece[j] == "X" && onlyXPiece[14-j] == "X") 
          {
            println("win X");
          }
          else
          {
            println("*");
          }
        }
      }
    }
  }
}
