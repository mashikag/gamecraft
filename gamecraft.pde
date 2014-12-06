// create sprite
Sprites catplayer;
Menu menu;

void setup()
{
  // resize screen
  size(800,600);
  
  menu = new Menu();
//  gameovermenu = new Menu();
  
  // create new player sprite
  catplayer = new Sprites("cat",1); 
  
  // add objects to ArrayList
  objects.add(new Player(200, 500)); 
  objects.add(new Enemy(500, 500, 55, 55, 100, objects.get(0)));

}

ArrayList<GameObject> objects = new ArrayList<GameObject>();

void draw()
{
 
  // add background colour
    background(0, 0, 0);
    
  //  menu.mainmenu();
  
    println(objects.size());
    
  // loop to update ArrayList
  for (int i = 0 ; i < objects.size() ; i ++)
  {
    objects.get(i).move();
    objects.get(i).display();
  }
 
}
