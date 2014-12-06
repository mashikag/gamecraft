class Player extends GameObject
{
  
  float w = 50;
  float h = 50;
  float speed = 5;
  float timeDelta = 1.0f / 60.0f;
  
  boolean shoot = false;
  boolean altshoot = false;
  
  float fireRate = 10.0f;
  float ellapsed = 0.0f;
  float toPass = 15.0f / fireRate;
  
  Player(float  x, float y, float w, float h)
  {
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
  
  void display()
  {
   // make rect invisible
   noStroke();
   noFill();
   // player position
   rect(getX(), getY(), w, h); 
   // display sprite
   catplayer.display(getX()-catplayer.getWidth()+40, getY()); 

   
  
  
  }  
  
  void move(){
    ellapsed += timeDelta;
    // The variable "key" always contains the value 
    // of the most recent key pressed.  
    if(keyPressed)
    {
      switch (key)
      {
        case 'a':
          setX(getX()-speed);
          break;
        case 'd':

          setX(getX()+speed);
          break;
       case ' ':
          if (ellapsed > toPass)
          {
            float x = getX();float y = getY();
            objects.add(new Bullet(x, y, 20, 20));
            ellapsed = 0.0f;
          }
          break;
        }
    }
    if (mousePressed && (mouseButton == LEFT)) {
      shoot=true;
    }
    else{
      shoot=false;
    }
    if (mousePressed && (mouseButton == RIGHT)) {
      altshoot=true;
    }
    else{
      altshoot=false;
    }
  }
}
