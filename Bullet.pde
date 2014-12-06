class Bullet extends GameObject
{
  float width, height,posx,posy;
  float speed = 5;
  float dAngle = PI/15;
  float angle;
  float col1=(float)Math.random()*254;
  float col2=(float)Math.random()*254;
  float col3=(float)Math.random()*254;
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
    col1=(float)Math.random()*254;
    col2=(float)Math.random()*254;
    col3=(float)Math.random()*254;
    fill(col1, col2, col3);
    ellipse(-width, 0, width, height);
    col1=(float)Math.random()*254;
    col2=(float)Math.random()*254;
    col3=(float)Math.random()*254;
    fill(col1, col2, col3);
    ellipse( width, 0, width, height);
    col1=(float)Math.random()*254;
    col2=(float)Math.random()*254;
    col3=(float)Math.random()*254;
    fill(col1, col2, col3);
    ellipse( 0, -height, width, height);
    col1=(float)Math.random()*254;
    col2=(float)Math.random()*254;
    col3=(float)Math.random()*254;
    fill(col1, col2, col3);
    ellipse( 0, height, width, height);
    col1=(float)Math.random()*254;
    col2=(float)Math.random()*254;
    col3=(float)Math.random()*254;
    fill(col3, col1, col2);
    ellipse(0, 0, width, height);
    popMatrix();
  }
}
