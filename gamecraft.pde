// create sprite
Sprites playerwalking, playeridle;

Levels levels;
Menu menu;

// import minim audio player
import ddf.minim.*;

// create classes
Minim minim;
AudioPlayer sou;
Audio audio;

final int HEIGHT = 600;
final int WIDTH = 800;
PImage bg;

void setup()
{
audio = new Audio(new Minim(this));
  // resize screen
  size(WIDTH,HEIGHT);
   bg = loadImage("bg1.jpg");
  levels = new Levels();
  menu = new Menu();
  //  gameovermenu = new Menu();
  // levels.startgame();
  // create new player sprite
  playerwalking = new Sprites("catwalking",5); 
  playeridle = new Sprites("catidle",1);
    
  // add objects to ArrayList
  objects.add(new Player(200, 500)); 
  objects.add(new Enemy(500, 500, 55, 55, 100, objects.get(0)));
<<<<<<< HEAD
  // update music
   audio.audioMusic();  
   showmenu = true;
=======
  

>>>>>>> c1598115346c77b72cc90e42073270b27c44ef89
}

ArrayList<GameObject> objects = new ArrayList<GameObject>();

void draw()
{
 
  // add background colour
    background(bg);
    print(levels.level);
    //levels.backgrounds();
    levels.startgame();
   
  //  menu.mainmenu();
 
    
  // loop to update ArrayList
  for (int i = 0 ; i < objects.size() ; i ++)
  {
    objects.get(i).move();
    objects.get(i).display();
    if(objects.get(i).getX() > WIDTH || objects.get(i).getX() < 0 || objects.get(i).getY() > HEIGHT || objects.get(i).getY() < 0){
      objects.remove(i);
    }
    
  }
 
}
