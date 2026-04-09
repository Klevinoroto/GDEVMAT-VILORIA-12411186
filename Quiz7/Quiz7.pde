Walker[] walkers = new Walker[100];

void setup() 
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, 1, 0); 
  
  for (int i = 0; i < walkers.length; i++) {
    walkers[i] = new Walker();
    walkers[i].position = new PVector(random(Window.left, Window.right), random(Window.bottom, Window.top));
    walkers[i].scale = random(10, 50);  // random scale
  }
}

PVector mousePos() 
{
  float x = -(mouseX - Window.windowWidth); 
  float y = mouseY - Window.windowHeight; 
  return new PVector(x, y); 
}

void draw() 
{
  background(100);
  
  PVector mouse = mousePos();  
  
  fill(255, 0, 0);
  circle(mouse.x, mouse.y, 25);
  
  for (Walker w : walkers) 
  {
    PVector target = PVector.sub(mouse, w.position); 
    target.normalize();  
    target.mult(0.2);    
    w.acceleration = target;
    w.update();
    w.render();
    w.checkEdges();
  }
}
