class Bullet extends GameObject
{
  float width, height;
  float speed = 5;
  float dAngle = PI/15;
  float angle;
  
  Bullet(float x, float y, float width, float height)
  {
    angle = PI;
    setY(y);
    setX(x);
    this.width = width;
    this.height = height;
  }
  @Override
  void move()
  {
    //dx = cos(theta);
    //dy = sin(theta);
    angle += dAngle % PI;
    setX(getX() + speed);
  }
  
  @Override
  void display()
  {
    pushMatrix();
    translate(getX(), getY());
    rotate(angle);
    ellipseMode(RADIUS);
    fill(204, 102, 0);
    ellipse(-width/2, 0, 10, 10);
    ellipse( width/2, 0, 10, 10);
    ellipse( 0, -height/2, 10, 10);
    ellipse( 0, height/2, 10, 10);
    //rotate(theta);
    popMatrix();
  }
}
