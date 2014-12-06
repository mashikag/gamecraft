class GameObject
{
  PVector velocity = new PVector(0, 0);
  PVector position = new PVector(width / 2, height / 2);
  PVector nextPosition = new PVector(position.x, position.y);
  float theta=0;
 
  
  GameObject()
  {
    position.x = width / 2;
    position.y = height / 2;
  }

  void move()
  {
    float dx = (mouseX-position.x);
    float dy = (mouseY-position.y);
    float dydx = (dx / dy);
    float theta=atan(dydx);
  }
  
  void display()
  {
    println("display getting called");
  } 
  
}
