class Player extends GameObject
{
  
  float w = 50;
  float h = 50;
 
  float speed = 5;
  
  boolean jump,crouch,shoot,altshoot;
  
  float timeDelta = 1.0f / 60.0f;
  
  float fireRate = 10.0f;
  float ellapsed = 0.0f;
  float toPass = 15.0f / fireRate;
<<<<<<< HEAD
  int idle = 1;
=======
>>>>>>> 50c7a9de7ef94088234d971ef3934efb17dfe268
  
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
<<<<<<< HEAD
   
   if(idle == 1)
   {
     catright.display(position.x-catright.getWidth()+40, position.y); 
   }
   
    if(idle == 0)
   {
     catleft.display(position.x-catleft.getWidth()+40, position.y); 
   }
   
  }  
  
  void move(){
      
  
=======
   catplayer.display(position.x-catplayer.getWidth()+40, position.y); 

   
  
  
  }  
  
  void move(){
    
>>>>>>> 50c7a9de7ef94088234d971ef3934efb17dfe268
  ellapsed += timeDelta;
  // The variable "key" always contains the value 
  // of the most recent key pressed.  
    if(keyPressed)
  {
    switch (key)
    {
     case 'w':
     jump=true;
      break;
        case 's':
     crouch =true;
      break;
     case 'a':
<<<<<<< HEAD
       
      idle = 0;
      catleft.display(position.x-catleft.getWidth()+40, position.y); 
      position.x-=speed;
      
      break;
     case 'd':
     
      idle = 1;
      catright.display(position.x-catright.getWidth()+40, position.y); 
      position.x+=speed;
      
=======
      direction = -1;
      position.x-=speed;
      break;
     case 'd':
      direction = 1;
      position.x+=speed;
>>>>>>> 50c7a9de7ef94088234d971ef3934efb17dfe268
      break;
      
     case ' ':
    if (ellapsed > toPass)
      {
      Bullet bullet = new Bullet();
      bullet.position = position.get();
      objects.add(bullet);
      ellapsed = 0.0f;
      }
     break;
<<<<<<< HEAD
    
    }
  }
    else
    {
      idle = idle;
    }
    
  
=======
     
    }
  }
>>>>>>> 50c7a9de7ef94088234d971ef3934efb17dfe268
   if (mousePressed && (mouseButton == LEFT)) {
      shoot=true;
     
    }
    else{shoot=false;
    }
   if (mousePressed && (mouseButton == RIGHT)) {
      altshoot=true;
    }
    else{
      altshoot=false;
    }
  }
}
