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
    position.x = x;
    position.y = y;
    this.w = w;
    this.h = h;
  }
  
   Player(float x, float y)
  {
    position.x = x;
    position.y = y;
    h = 40;
    w = 40;
  }
  
  void display()
  {
   // make rect invisible
   noStroke();
   noFill();
   // player position
   rect(position.x, position.y, w, h); 
   // display sprite
   catplayer.display(position.x-catplayer.getWidth()+40, position.y); 

   
  
  
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
          direction = -1;
          position.x-=speed;
          break;
        case 'd':
          direction = 1;
          position.x+=speed;
          break;
       case ' ':
          if (ellapsed > toPass)
          {
            
          Bullet bullet = new Bullet();
          bullet.position = position.get();
          objects.add(new Bullet(position.x, position.y));
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
