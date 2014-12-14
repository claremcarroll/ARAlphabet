void savePic()
{ 
  s = second();
  m = minute();
  h = hour();
  if (keyPressed && key == 's')
  {
    //play sound
    picture.rewind();
    picture.play();
    
    save("Alphabet"+y+"/"+month+"/"+d+"-"+h+"."+m+"."+s+".png");
  }
}
