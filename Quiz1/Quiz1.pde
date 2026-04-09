float amplitude = 20;
float frequency = 0.1;
float speed = 0.1;

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

void draw()
{
  background(220);
  
  drawPlane();
  
  drawLinear();
  drawQuadratic();
  drawSine();
  
}

void keyPressed()
{
  if (key == 'w')
  {
    amplitude += 1;
  }
  if (key == 's') 
  {
    amplitude -= 1;
  }

  if (key == 'd')
  {
    frequency += 0.05;
  }
  if (key == 'a') 
  {
    frequency -= 0.05;
  }
}

void drawPlane()
{

  
  strokeWeight(2);
  color black = color(0, 0, 0);
  fill(black);
  stroke(black);
  line(300, 0, -300, 0);
  line(0, -300, 0, 300);
}

void drawLinear()
{
  color red = color(200, 75, 75);
  fill(red);
  noStroke();
  
  for (int x = -200; x <= 200; x++)
  {
    circle(x, (-5 * x + 30), 5);
  }
}

void drawQuadratic()
{
  color yellow = color(200, 200, 0);
  fill(yellow);
  stroke(yellow);
  noStroke();
  for (float x = -300; x <= 300; x+=0.1f)
  { 
    circle(x, (float)Math.pow(x, 2) - (x * 15) - 3, 5);
  }
}

void drawSine()
{
  color purple = color(200, 10, 200);
  fill(purple);
  stroke(purple);
  
  for (float x = -250; x <= 250; x++)
  { 
      circle(x, sin(x * frequency + frameCount * speed) * amplitude, 5);
  }
}
