// create sprite
Sprites catplayer;


void setup()
{
  // resize screen
  size(800,600);
  
  // create new player sprite
  catplayer = new Sprites("cat",1); 
  
  // add objects to ArrayList
  objects.add(new Player(200, 500)); 
  
}

ArrayList<GameObject> objects = new ArrayList<GameObject>();

void draw()
{
  
  // add background colour
  background(0, 0, 0);
  
    println(objects.size());
    
  // loop to update ArrayList
  for (int i = 0 ; i < objects.size() ; i ++)
  {
    objects.get(i).move();
    objects.get(i).display();
  }
  
}
