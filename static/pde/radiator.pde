// TRY THIS ONE VERY LARGE!!!!!!

void setup() {
  size(1024, 768); 
  background(255,255,255); 
  smooth();
  stroke(160, 20);
  noLoop();
}




void draw() {

  int repeat = int(random(8));
  for(int i=0; i<=repeat; i++) {
    int firstx = int(random(1024));
    int firsty = int(random(768));

    circler(firstx, firsty, 300, 255, 12);
  }

}

void circler(float x, float y, float w, int redd, int recursion) {
  fill(redd, 0, 0, 40);
  ellipse(x, y, w, w);
  if(recursion>0) {

    int times = int(random(4));
    for(int t=0; t<=times; t++) {
      recursion = recursion - 1;
      redd = redd-10;
      float newx = random(-(w/2), (w/2));
      //println("x adjustment will be: "+newx);

      float compx = (pow(newx, 2));
      //println("computing x-squared: "+ compx);
      float hypsqr = (pow((w/2), 2));
      //println("the square of the hypotenuse is: "+hypsqr);
      float newy = hypsqr - compx;
      newy = sqrt(newy);

      float neww = w*0.75;
      //println("recursion["+recursion+"]: x: "+(x + newx)+", y: "+(y+newy)+", w: "+neww);

      float plotx = x + newx;
      float ploty = y + newy;

      if((plotx)>width) {
        plotx = plotx - width;  
      }

      if((plotx)<0) {
        plotx = width - plotx;
      }

      if((ploty)>height) {
        ploty = ploty - height;
      }

      if((ploty)<0) {
        ploty = height - ploty;

      }


      circler(plotx, ploty, neww, redd, recursion);
    }

  }
}

int randomer() {
  return int(random(20));
}

int randomer2() {
  return int(random(-10, 20));
}