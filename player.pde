class Player extends GameObject
{
  
  float w = 50;
  float h = 50;
  float speed = 5;
  float timeDelta = 1.0f / 60.0f;
  float jumpVelocity = -10;
  boolean faceRight;
  boolean inAir;
  boolean falling;
  boolean shoot;
  
  float fireRate = 10.0f;
  float ellapsed = 0.0f;
  float toPass = 15.0f / fireRate;
  
  Player(float  x, float y, float w, float h)
  {
    inAir = false;
    falling = false;
    shoot = false;
    faceRight = true;
    setX(x);
    setY(y);
    this.w = w;
    this.h = h;
  }
  
   Player(float x, float y)
  {
    setX(x);
    setY(y);
    h = 40;
    w = 40;
  }
  
  @Override
  void display()
  {
   // make rect invisible
   noStroke();
   noFill();
   // player position
   rect(getX(), getY(), w, h); 
   // display sprite
   playeridle.display(getX()-playeridle.getWidth()+40, getY());
  }  
  
  @Override
  void move(){
    if(inAir)  
    {  
      setY(getY()+jumpVelocity);
      if(getY() >= 500){
        inAir = false;
        jumpVelocity = -10;
      }
      jumpVelocity += 0.4;
    } 
    // The variable "key" always contains the value 
    // of the most recent key pressed.  
    if(keyPressed)
    {
      switch (key)
      {
        case 'w':
          if(!inAir){
            inAir = true;
            
          }
          break;
        case 'a':
          setX(getX()-speed);
          faceRight = false;
           playerwalking.display(getX()-playerwalking.getWidth()+40, getY());
          break;
        case 'd':
         playerwalking.display(getX()-playerwalking.getWidth()+40, getY());
          faceRight = true;
          setX(getX()+speed);
          break;
       case ' ':
    
          break;
        }
    }
    if (mousePressed && (mouseButton == LEFT)) {
      shoot=true;
      float x = getX();float y = getY();
      objects.add(new Bullet(x, y, 10, 10));
    }
    else{
      shoot=false;
    }
  }
}
