void setup() 
{
  size(1280, 720);
  background(0);
}

Walker perlinWalker = new Walker(); 

void draw() 
{
  fill(0);
  noStroke(); 
  perlinWalker.render(); 
  perlinWalker.perlinWalk(); 
}
