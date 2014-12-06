class Enemy extends GameObject
{
  float x,y;
  float w = 50;
  float h = 50;
  float speed = 2;
  GameObject p;
  float awareDistance = 500;
  
  Enemy(float x, float y, float w, float h, GameObject p)
  {
    position.x = x;
    position.y = y;
    this.w = w;
    this.h = h;
    this.p = p;
  }
  
  void move(){
    float dist = position.x - p.position.x;
    if (dist <= awareDistance && dist > 0){
      position.x -= speed;
    } else if(dist >= awareDistance && dist < 0) {
      position.x += speed;
    }
  }
  
  public float getAwareDistance(){
    return awareDistance;
  }
  
  public void setAwareDistance(float awareDistance){
    this.awareDistance = awareDistance;
  }
  
  void display(){
    fill(255);
    rect(position.x, position.y, 55, 55);
  }
}
