class Levels
{
 
 PImage bg1;
 int level;
 
 void startgame()
 {
   
  if(keyPressed)
    {
      switch (key)
      {
        case 'f':
         level = 1;
         break;
        
      }
    }
 }
 
 void backgrounds()
 {
   if(level == 1)
   {
   bg1 = loadImage("bg1.jpg");
   image (bg1,0,0);
   }
   
 }
 
  
}