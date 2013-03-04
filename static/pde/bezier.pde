var height = $(window).height();
var width = $(window).width();

void setup() {
  size(width, height); 
  background(255); 
  stroke(0, 40);
  strokeWeight(1);
  smooth(); 
  noFill();
  noLoop();
}

void draw() {
  
  /**************************
  *     Initialization
  **************************/
  
  //=> how many points will be we be dealing with?
  int limit = 25;
  int numPoints = int(random(limit));
  
  int[] xs = new int[limit];
  int[] ys = new int[limit];
  
  for(int i = 0; i <= numPoints; i++) {
    //=> points...
    int x = int(random(width));
    int y = int(random(height));
  
    //=>add 'em to the array
    xs[i] = x;
    ys[i] = y;  
  }
  
  // next, let's plot the points:
  for(int j = 0; j <= numPoints; j++) {
    point(xs[j], ys[j]);
    
    //then draw a line from each point to each other point:
    for(int k=0; k <= numPoints; k++)
    {
      if(k == j) {
        continue; //skip the current point... 
      } else {
        line(xs[j], ys[j], xs[k], ys[k]);
      }
    }
  }


}
