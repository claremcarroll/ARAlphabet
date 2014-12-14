void autoFunction(int totalChars){
 if(auto == true){
   
  if(totalChars == 1)
  {
    word = true;
  }
  
  else if(totalChars == 2)
  {
    condition1();
    word = false;
  }
  
  else if(totalChars == 3)
  {
    condition2();
    word = false;
  }
  
  else if(totalChars >= 4)
  {
    word = false;
    condition3();
  }
  
  
  
 } 
  
  
}
