class Player extends GameObject
{
  
  float w = 50;
  float h = 50;
  float speed = 5;
  float timeDelta = 1.0f / 60.0f;
  float gravity = 0.5f;
  boolean faceRight;
  boolean inAir;
  boolean shoot;
  
  float fireRate = 10.0f;
  float ellapsed = 0.0f;
  float toPass = 15.0f / fireRate;
  float direction;
  boolean idle = true;
  
  Player(float  x, float y, float w, float h)
  {
    inAir = false;
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
   // player animation
   if(idle == true)
   {
   playeridle.display(getX()-playeridle.getWidth()+40, getY());
   }
   
  translate(getX(), getY());
  scale(direction, 1);
  imageMode(CENTER);
   pushMatrix();
  
    if(keyPressed)
    {
      switch (key)
      {
      
        case 'a':
    
          // player animation
           playerwalking.display(getX()-playerwalking.getWidth()+40, getY());
           idle = false;
           
          break;
        case 'd':
         
         // player animation
          playerwalking.display(getX()-playerwalking.getWidth()+40, getY());
           idle = false;  
 
      }
      idle = true;  
  }  
   popMatrix();  
}
  
  @Override
  void move(){
    if(inAir){
      setY(getY() - gravity);
    }
    ellapsed += timeDelta;
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
          // player animation
           playerwalking.display(getX()-playerwalking.getWidth()+40, getY());
           
          break;
        case 'd':
         
          faceRight = true;
          setX(getX()+speed);
         // player animation
          playerwalking.display(getX()-playerwalking.getWidth()+40, getY());
          
          break;
       case ' ':
          if (ellapsed > toPass)
          {

            
         // Bullet bullet = new Bullet();
         // bullet.position = position.get();
        //  objects.add(new Bullet(position.x, position.y));
          ellapsed = 0.0f;

            float x = getX();float y = getY();
            objects.add(new Bullet(x, y, 10, 10));
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
  }
}
