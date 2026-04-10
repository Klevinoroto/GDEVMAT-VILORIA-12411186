public class Walker 
{
  public PVector position = new PVector();

  public float scale = 15;
  public int col;

  public Walker(){}

  public void render() 
  {
    fill(col);
    noStroke();
    circle(position.x, position.y, scale);
  }
}
