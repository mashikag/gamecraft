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
    angle -= dAngle % PI;
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
    ellipse(-width, 0, width, height);
    ellipse( width, 0, width, height);
    ellipse( 0, -height, width, height);
    ellipse( 0, height, width, height);
    fill(255, 55, 0);
    ellipse(0, 0, width, height);
    //rotate(theta);
    popMatrix();
  }
}
