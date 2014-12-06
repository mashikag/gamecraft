class GameObject
{
  PVector velocity = new PVector(0, 0);
  PVector position = new PVector(width / 2, height / 2);
  float theta=0;
 
  float jumpSpeed, walkSpeed;
  float left, right, up, down;
  float direction;
  
  GameObject()
  {
    position.x = width / 2;
    position.y = height / 2;
  }

  void move()
  {
    
  }
  
  void display()
  {
    println("display getting called");
  } 
  
}
