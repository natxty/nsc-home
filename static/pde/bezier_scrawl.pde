void setup() {
size(1024, 768); 
background(255); 
stroke(0);
strokeWeight(1);
smooth(); 
noFill();
noLoop();
}

void draw() {
  
  //endpoints==startpoint:
  
  int xstart = int(random(1000));
  int ystart = int(random(768));
  int xfinal = xstart;
  int yfinal = ystart;

  
  //let's make a whole bunch of random middle/controls
  for (int i=0; i < 20; i++) {
    int xend = int(random(1000));
    int yend = int(random(768));
    int x3 = int(random(1000));
    int y3 = int(random(768));
    int x4 = int(random(1000));
    int y4 = int(random(768));
    bezier(xstart, ystart, x3, y3, x4, y4, xend, yend);
    xstart = xend;
    ystart = yend;
  }
  
  //one final time, to bring it home
    int x3 = int(random(1000));
    int y3 = int(random(768));
    int x4 = int(random(1000));
    int y4 = int(random(768));
  bezier(xstart, ystart, x3, y3, x4, y4, xfinal, yfinal);


}