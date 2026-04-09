public class Walker 
{
  public PVector position = new PVector(); 
  public PVector speed = new PVector(5,8);
  public float scale = random(15, 40); 
  
  public color walkerColor = color(random(255), random(255), random(255));
  
  public Walker(){}
  
  public void moveAndBounce()
  {
    position.add(speed); 
    
    if ((position.x > Window.right) || (position.x < Window.left)) 
    {
      walkerColor = color(random(255), random(255), random(255));
      scale = random(15, 40); 
      speed.x *= -1; 
    }
  
    if ((position.y > Window.top) || (position.y < Window.bottom)) 
    {
      walkerColor = color(random(255), random(255), random(255));
      scale = random(15, 40); 
      speed.y *= -1; 
    }
  }
  
  public void render()
  {
    fill(walkerColor); 
    circle(position.x, position.y, scale);
    
  }
}
