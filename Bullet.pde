class Bullet extends GameObject
{
  
  Bullet()
  {
    position.x = width / 2;  
    position.y = height / 2;
    theta = 0;
  }
   
 
  float dx;
  float dy;
 
  
  void move()
  {
    dx = cos(theta);
    dy = sin(theta);
    float speed = 10.0f;
   position.x += dx * speed;
    position.y += dy * speed;
  }
  
  void display()
  {
    pushMatrix();
    translate(position.x + 25, position.y + 25);
    
    fill(255);
    ellipse(-10, 0, 10, 10);
    ellipse( 10, 0, 10, 10);
    ellipse( 0, -10, 10, 10);
    ellipse( 0, 10, 10, 10);
    //rotate(theta);
    popMatrix();
  }
}
