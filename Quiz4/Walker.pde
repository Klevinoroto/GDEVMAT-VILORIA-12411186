public class Walker
{
  public float x;
  public float y;

  public float tx = 10;
  public float ty = 100*2;

  public float ts = 200*2;

  public float tg = 500;
  public float tb = 500*2;

  public float thick = 5;
  public float r = 255, g = 255, b = 255;

  void render()
  {
    fill(r, g, b);
    noStroke();
    circle(x, y, thick);
  }

  void perlinWalk()
  {
    x = map(noise(tx), 0, 1, 0, width);
    y = map(noise(ty), 0, 1, 0, height);

    thick = map(noise(ts), 0, 1, 5, 150);

    r = 255;
    g = map(noise(tg), 0, 1, 0, 255);
    b = map(noise(tb), 0, 1, 0, 255);

    tx += 0.01f;
    ty += 0.01f;
    ts += 0.01f;
    tg += 0.01f;
    tb += 0.01f;
  }
}
