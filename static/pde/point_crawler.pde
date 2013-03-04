var height = $(window).height();
var width = $(window).width();

void setup() 
{
  size(width, height);  // Size should be the first statement
  background(255,255,255);   // Set the background to black
  
  // Set line drawing color to white
  frameRate(8000);
  smooth();
}

int x = int(random(200));
int y = int(random(200));
float clr = random(100);
float cm = 0;
float strk = random(255);
float mv = 0;

void draw() 
{ 
  
  if (strk > 255) {mv = -0.1;}
  if (strk < 100) {mv = 0.1;}
  if (clr >= 50) {cm = -.1;}
  if (clr < 1) {cm = 0.1;}
  stroke(strk, clr);
  
  int dir = int(random(4));
  
  if(dir == 1) {
    x = x + 1;
  }
 if(dir == 0) {
   y = y + 1;
  }
  if(dir == 2) {
    x = x - 1;
  }
  if (dir == 3) {
   y = y - 1;
  }
  if (y > height ) { y = 0; }
  if (x > width ) { x = 0; }
  if (y < 0) { y = height; }
  if (x < 0) { x = width; }
  point(x, y);
  clr = clr + cm;
  strk = strk + mv;
  
} 
