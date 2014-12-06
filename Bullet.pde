class Bullet extends GameObject
{
  float width, height,posx,posy;
  float speed = 5;
  float dAngle = PI/15;
  float angle;
  
  Bullet(float x, float y, float width, float height)
  {
    posx=x;
    posy=y;
    angle = PI;
    setY(y);
    setX(x);
    this.width = width;
    this.height = height;
  }
  @Override
  void move()
  {
    float dx=-(mouseX-posx);
    float dy=-(mouseY-posy);
    float theta=dy/dx;
   
    float projx=cos(theta);
    float projy=sin(theta);
    

    angle -= dAngle % PI;
    if(mouseX<posx){
      projx=-projx;
      projy=-projy;
    }
    setX(getX() + projx*speed);
    setY(getY() + projy*speed);
    
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
    fill(255, 0, 80);
    ellipse(0, 0, width, height);
    popMatrix();
  }
}
