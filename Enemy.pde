class Enemy extends GameObject
{
  float x,y;
  float w = 50;
  float h = 50;
  float speed = 5;
  GameObject p;
  float awareDistance = 500;
  int countFrame = 60;
  
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
      position.x -= speed * Math.random();
    } else if(dist >= -awareDistance && dist < 0) {
      position.x += speed * Math.random();
    }
  }
  
  void changeSpeed(){
    if(countFrame >= 60){
      countFrame = 0;
    }else{
      countFrame++;
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
