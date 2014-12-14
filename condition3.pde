void condition3() {
  
     if (counter < 2)
     {
       counter+= 0.25;
     }
     
     if (counter >= 2)
     {
       counter2+= 0.25;
     }
     
     if (counter >= 2 && counter2 >= 2)
     {
       counter = 0;
       counter2 = 0;
     }
     
}
