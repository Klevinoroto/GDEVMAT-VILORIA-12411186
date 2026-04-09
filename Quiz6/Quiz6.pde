void setup()
{
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  size(1080, 720, P3D);
}

PVector mousePos()
{
  float x = mouseX - Window.windowWidth;
  float y = -(mouseY - Window.windowHeight);
  return new PVector(x, y);
}

void draw()
{

  background(130);
  int generalLength = 400;
  float handleLength = 0.12f;

  PVector mouse = mousePos();
  mouse.normalize().mult(generalLength);

  strokeWeight(22);
  stroke(255, 80, 80);
  line(mouse.x * handleLength, mouse.y * handleLength, mouse.x, mouse.y);
  line(-mouse.x * handleLength, -mouse.y * handleLength, -mouse.x, -mouse.y);
  
  strokeWeight(10);
  stroke(254, 211, 211, 250);
  line(0, 0, mouse.x, mouse.y);
  line(0, 0, -mouse.x, -mouse.y);
  
  strokeWeight(15);
  stroke(25);
  line(-mouse.x * handleLength, -mouse.y * handleLength, mouse.x * handleLength, mouse.y * handleLength);

  println(mouse.mag());
}
