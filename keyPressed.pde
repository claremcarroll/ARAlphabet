void  keyPressed() 
{
       if(key == 'w')
       {
         auto = false;
         
         if(word == true)
         {
           word = false;
         }
         if(word == false)
         {
           word = true;
         }
       }
       if(key == 'p')
       {
         auto = false;
           if(condition1 == true)
           {
             condition1 = false;
           }
           if(condition1 == false)
           {
             condition1 = true;
           }
       }
       if(key == 'r')
       {
         auto = false;
         if(condition2 == true)
         {
           condition2 = false;
         }
         if(condition2 == false)
         {
           condition2 = true;
         }
       }
       if(key == 'j')
       {
         auto = false;
         if(condition3 == true)
         {
           condition3 = false;
         }
         if(condition3 == false)
         {
           condition3 = true;
         }
       }
       else if(key == 'x')
       {
         auto = false;
         counter = 0;
         counter2 = 0;
         counter3 = 0;
         counter4 = 0;
         counter5 = 0;
         word = false;
         condition1 = false;
         condition2 = false;
         condition3 = false;
         
      }
      
      else if(key == 'a')
      {        
         auto = true;
      }
      
      

  }

