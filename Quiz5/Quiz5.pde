void setup() 
{
  size(1280, 720, P3D);
  background(255);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

Walker vectorWalker = new Walker(); 

void draw()
{
  background(255); 
  noStroke();
  vectorWalker.render(); 
  vectorWalker.moveAndBounce();
}
