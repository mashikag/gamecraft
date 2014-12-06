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
    //rotate(theta);
    stroke(255);
    fill(255);
    line(0, + 5, 25, 5);
    popMatrix();
  }
}
