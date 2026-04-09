color backgroundColor = color(255, 255, 255);

void setup() 
{
  size(1280, 720, P3D);
  background(backgroundColor); 
}

void draw()
{
  float meanX = width / 2;
  float standardDeviationX = 150;
  float x = randomGaussian() * standardDeviationX + meanX;
  float y = random(height);
  
  float meanSize = 30;
  float standardDeviationSize = 30;
  float circleSize = abs(randomGaussian() * standardDeviationSize + meanSize);
  
  float r = random(255);
  float g = random(255);
  float b = random(255);
  float a = random(10, 100);
  
  noStroke();
  fill(r, g, b, a);
  circle(x, y, circleSize);
  
  if (frameCount % 300 == 0) {
    background(backgroundColor); 
  }
}
