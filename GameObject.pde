class GameObject
{
  PVector velocity = new PVector(0, 0);
  PVector position = new PVector(width / 2, height / 2);
<<<<<<< HEAD
  PVector nextPosition = new PVector(position.x, position.y);
  float theta=0;
 
=======
  float theta=0;
 
  float jumpSpeed, walkSpeed;
  float left, right, up, down;
  float direction;
>>>>>>> 50c7a9de7ef94088234d971ef3934efb17dfe268
  
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
