// live video libraries
import processing.video.*;
import ddf.minim.*;

// AR library - find the 'NyAR4psg' folder that came with today's downloadable
// code package and put it into the 'libraries' folder of your Processing sketchbook
import jp.nyatla.nyar4psg.*;

// video object
Capture video;

//picture sound
Minim minim;
AudioPlayer picture;

// AR marker object - this keeps track of all of the patterns you wish to look for
MultiMarker augmentedRealityMarkers;

// define our 3D model object
//PShape currentAlpha;

PShape alphaA;
PShape alphaB;
PShape alphaC;
PShape alphaD;
PShape alphaE;
PShape alphaF;
PShape alphaG;
PShape alphaH;
PShape alphaI;
PShape alphaJ;
PShape alphaK;
PShape alphaL;
PShape alphaM;
PShape alphaN;
PShape alphaO;
PShape alphaP;
PShape alphaQ;
PShape alphaR;
PShape alphaS;
PShape alphaT;
PShape alphaU;
PShape alphaV;
PShape alphaW;
PShape alphaX;
PShape alphaY;
PShape alphaZ;
PShape currentAlpha;

//time variables for saving
int d = day();    
int month = month();  
int y = year();
int s;
int m;
int h;


char[] myArray = new char[100];
int charCounter;
boolean yay = false;

String myWord;

float counter = 0;
float counter2 = 0;
float counter3 = 0;
float counter4 = 0;
String myString;
int counter5;

boolean word = false;
boolean condition1 = false;
boolean condition2 = false;
boolean condition3 = false;
boolean auto = false;
int totalChars = 0;

public void setup() 
{
  size(640, 480, OPENGL);

  video = new Capture(this, 640, 480);
  //LOAD WEBCAM
  //video = new Capture(this, 640, 480, "Webcam C170", 30);
  video.start();

  // create a new AR marker object
  // note that "camera_para.dat" has to be in the data folder of your sketch
  // this is used to correct for distortions in your webcam
  augmentedRealityMarkers = new MultiMarker(this, width, height, "camera_para.dat", NyAR4PsgConfig.CONFIG_PSG);

  //LOAD ARMARKERS
  loadMarkers();

  //LOAD OBJECTS
  loadObj();
  
  //sound
  minim = new Minim(this);
  picture = minim.loadFile("picture.wav");
  
  PFont myFont;
  myFont = createFont("clarefont1.otf", 100);
  textFont(myFont);

}

public void draw() 
{
 // we only really want to do something if there is fresh data from the camera waiting for us
  if (video.available())
  {
    // read in the video frame and display it
    video.read();
    //mirrorImage(video);
    image(video, 0, 0);
    savePic();
    directionalLight(175, 175, 175, 0, 0, -1);
    ambientLight(175, 175, 175);

    // ask the AR marker object to attempt to find our patterns in the incoming video stream
    augmentedRealityMarkers.detect(video);

    // if they exists then we will be given information about their location
    // note that we only have one pattern that we are looking for, so it will be pattern 0
for(int i=0; i<26; i++)
  {
      int curChar;
      if (augmentedRealityMarkers.isExistMarker(i))
      {
        curChar = 1;

        //currentAlpha = alphaA;
        // set the AR perspective
        augmentedRealityMarkers.setARPerspective();
  
        // next, remember the current transformation matrix
        pushMatrix();
  
        // change the transformation matrix so that we are now drawing in 3D space on top of the marker
        setMatrix(augmentedRealityMarkers.getMarkerMatrix(i));

        //LETTER
        pushMatrix();
        scale(25 + counter3 - counter4);
        translate(0,0,.5 + counter - counter2);
        rotateX(radians(90));
        rotateY(radians(180 + counter5));
        //rotateY(radians(180 + counter3));
        shape(chooseShape(i));
        
        popMatrix();
        
        if(word == true)
        {
          displayWord();
        }
        
        // all done!  time to clean up ...
  
        // reset to the default perspective
        perspective();
  
        // restore the 2D transformation matrix
        popMatrix();
        
        char temp = (char)(i+65);
        myString += temp;
        
      }
      
      else{
        
       curChar = 0; 
       
      }
      
      totalChars += curChar;
      
      
     
    }
     //println(totalChars);
     autoFunction(totalChars);
     totalChars = 0;
     conditions();
     keyPressed();
     

 /*   if(keyPressed){
      
       if(key == 'w')
       {
         auto = false;
         if(word == true)
         {
           word = false;
         }
         else
         {
           word = true;
         }
       }
       else if(key == 'p')
       {
         auto = false;
           if(condition1 == true)
           {
             condition1 = false;
           }
           else
           {
             condition1 = true;
           }
       }
       else if(key == 'r')
       {
         auto = false;
         if(condition2 == true)
         {
           condition2 = false;
         }
         else
         {
           condition2 = true;
         }
       }
       else if(key == 'j')
       {
         auto = false;
         if(condition3 == true)
         {
           condition3 = false;
         }
         else
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
      
      

  } */
}
}

