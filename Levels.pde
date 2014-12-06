class Levels
{
 
 PImage bg;
 int level;
 
 void startgame()
 {
   
  if(keyPressed){
      switch (key){
           case 'f':
           level = 1;
           break;
           case 'g':
           level = 0;
           break;
        }
     }
  }
 
 void backgrounds()
 {
   if(level == 1){
   bg = loadImage("bg1.jpg");
 
   }
   if(level==0){
   clear();
   }
   
 }
 
  
}
