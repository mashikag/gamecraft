boolean showmenu = false;

class Menu
{
  PFont menufont;

  PImage menuimage, gameoverimage;


void mainmenu()
{
  audio = new Audio(new Minim(this));
  menuimage =  loadImage("menu.png");
  image (menuimage,0,0);
  
  fill(255,255,0);
  rect( width / 2, height / 2 - 100, 200, 100 );
  
  menufont = createFont("Arial",30,true); 
  textFont(menufont);       
  textAlign(CENTER);
  
 text("unititled", width / 2 , height / 2 - 100 );
  
  if(mousePressed && (mouseButton == LEFT)){
    if(mouseX>=300 && mouseX<=500){
      if(mouseY>=200 && mouseY<=300){
        showmenu=false;
      }
    }
  }
}

void gameovermenu()
{
  
  
  
}

}
