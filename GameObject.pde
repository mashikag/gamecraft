abstract class GameObject
{
  float xPos = 0;
  float yPos = 0;
  
  GameObject()
  {
    xPos = 0; yPos = 0;
  }

  abstract void move();
  
  abstract void display();
  
  public float getX(){
    return xPos;
  }
  public float getY(){
    return yPos;
  }
  public void setX(float x){
    this.xPos = x;
  }
  public void setY(float y){
    this.yPos = y;
  }
  
}
