Walker normalWalker;
Walker basedWalker;

void setup()
{
  size(1280, 720, P3D);
  
  normalWalker = new Walker();
  normalWalker.x = width/2;
  normalWalker.y = height/2;
  
  basedWalker = new Walker();
  basedWalker.x = width/2;
  basedWalker.y = height/2;
}

void draw() 
{ 
  background(255);
  
  // normal walker
  normalWalker.randomWalk();
  normalWalker.render();
  
  // biased walker
  basedWalker.randomWalkBiased();
  basedWalker.render();
}
