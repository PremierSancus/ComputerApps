Boolean checkNestedFor(String string, String[] pieces) {
  Boolean win = false;
  for (int i=3; i<6; i++) 
  {
    for (int j=0; j<3; j++) 
    {
      if ( (i-j)+i < 9) 
      {
        if ( (4-j)+4 == 5 || (i-j)+i == 6 || (i-j)+i == 7 || (i-j)+i == 8 ) 
        {
          if (pieces[i] == string && pieces[j] == string && pieces[(i-j)+i] == string) 
          {
            win = true;
          }
          else 
          {
          }
          if (pieces[4] == string && pieces[3] == string && pieces[5] == string) 
          { 
            win = true;
          }
          else 
          {
          }
       }
       if ( (1-j)+1 == 2 || (1-j)+1 == 6 || (1-j)+1 == 7 || (1-j)+1 == 8 ) 
       {
         if (pieces[1] == string && pieces[j] == string && pieces[(1-j)+1] == string)
         {
           win = true;
         }
         else 
         {
         }
       }
       if ( (7-j)+7 == 6 || (7-j)+7 == 7 || (7-j)+7 == 8 ) 
       {
         if (pieces[7] == string && pieces[j] == string && pieces[(7-j)+7] == string) 
         {
           win = true;
         }
         else 
         {
         }
       } 
     }
   }
   if(win == true){
    XOrO = string; 
   }
 }
return win;
}
