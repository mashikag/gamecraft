class Enemy extends GameObject
{
  
  float x,y;
  
  float w = 50;
  float h = 50;
  
  Enemy(float x, float y, float w, float h)
  {
    position.x = x;
    position.y = y;
    this.w = w;
    this.h = h;
    
  }
  
}
