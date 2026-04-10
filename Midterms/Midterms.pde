Walker blackHole = new Walker(); 
Walker[] walkers = new Walker[100];

void setup() 
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, 1, 0); 
  
  for (int i = 0; i < walkers.length; i++) {
    walkers[i] = new Walker();
  }
  
  createBlackHole();
  createMatter();
}

void draw()
{
  background(0);
  
  for (int i = 0; i < walkers.length; i++)
  {
    Walker walker = walkers[i];
    
    PVector direction = PVector.sub(blackHole.position, walker.position);
    direction.normalize();
    direction.mult(2); 
    
    walker.position.add(direction);
    walker.render();
  }
  
  blackHole.render();
  
  if (frameCount % 300 == 0)
  {
    createBlackHole();
    createMatter();
  }
}

void createBlackHole()
{
  blackHole.col = color(255);
  blackHole.position.x = random(Window.left, Window.right);
  blackHole.position.y = random(Window.bottom, Window.top);
  blackHole.scale = 50;
}

void createMatter()
{
  for (int i = 0; i < walkers.length; i++)
  {
    float x = (float) randomGaussian() * (Window.windowWidth*2 / 6);
    float y = (float) randomGaussian() * (Window.windowHeight*2 / 6);
  
    Walker walker = walkers[i];
    walker.position = new PVector(x, y);
    walker.scale = random(5, 20);
    walker.col = color(random(255), random(255), random(255));
  }
}
