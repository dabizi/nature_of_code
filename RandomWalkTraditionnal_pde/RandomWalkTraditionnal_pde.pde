// Based on Daniel Shiffman's coding Train
// https://www.youtube.com/watch?v=rqecAdEGW6I
// More at The Nature of Code
// http://natureofcode.com

Walker w;

void setup() {
  size(640, 360);
 

  // Here is created new walker object
  w = new Walker();
   background(255);
}

void draw() {
  
  w.step();
  w.render();
}
