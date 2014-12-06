class Bullet extends GameObject
{
  float width, height;
  
  Bullet(float x, float y, float width, float height)
  {
    setY(y);
    setX(x);
    this.width = width;
    this.height = height;
  }
   
 
  float dx;
  float dy;
 
  
  void move()
  {
    //dx = cos(theta);
    //dy = sin(theta);
    float speed = 2.0f;
    setX(getX() + dx * speed);
    setY(getY() + dy * speed);
  }
  
  void display()
  {
    pushMatrix();
    translate(getX(), getY());
    rotate(PI/6);
    ellipseMode(RADIUS);
    fill(255);
    ellipse(-width/2, 0, 10, 10);
    ellipse( width/2, 0, 10, 10);
    ellipse( 0, -height/2, 10, 10);
    ellipse( 0, height/2, 10, 10);
    //rotate(theta);
    popMatrix();
  }
}
