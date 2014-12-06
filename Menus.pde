
class Menu
{
  PFont menufont;
  boolean showmenu = true;
  PImage menuimage, gameoverimage;


void mainmenu()
{
 
  menuimage =  loadImage("menu.png");
  image (menuimage,0,0);
  
  fill(255,255,0);
  rect( width / 2, height / 2 - 100, 300, 100 );
  
  menufont = createFont("Arial",30,true); 
  textFont(menufont);       
  textAlign(CENTER);
  
  text("unititled", width / 2 , height / 2 - 100 );
 
  
}

void gameovermenu()
{
  
  
  
}

}
