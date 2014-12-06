// create sprite
Sprites playerwalking, playeridle;

Levels levels;
Menu menu;

final int HEIGHT = 600;
final int WIDTH = 800;
PImage bg;

void setup()
{

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
    if(objects.get(i).getX() > WIDTH){
      objects.remove(i);
    }
    
  }
 
}
