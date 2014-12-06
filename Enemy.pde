class Enemy extends GameObject
{
  float x,y;
  float w = 50;
  float h = 50;
  float initSpeed = 2;
  float speed = initSpeed;
  GameObject p;
  float awareDistance = 500;
  int countFrame = 30;
  int hp = 100;
  
  Enemy(float x, float y, float w, float h, int hp, GameObject p)
  {
    position.x = x;
    position.y = y;
    this.w = w;
    this.h = h;
    this.p = p;
  }
  
  void hit(int damage){
    hp -= damage;
  }
  
  void move(){
    float dist = position.x - p.position.x;
    if (dist <= awareDistance && dist > 0){
      changeSpeed();
      position.x -= speed;
    } else if(dist >= -awareDistance && dist < 0) {
      changeSpeed();
      position.x += speed;
    }
  }
  
  void changeSpeed(){
    if(countFrame >= 60){
      countFrame = 0;
      speed = (float)Math.random() * initSpeed;
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
