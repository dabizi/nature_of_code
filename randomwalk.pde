// Based on Daniel Shiffman's coding Train
// https://www.youtube.com/watch?v=rqecAdEGW6I
// More at The Nature of Code
// http://natureofcode.com

Walker w;

void setup() {
  size(400, 400);
  frameRate(30);

  // Here is created new walker object
  w = new Walker();
}

void draw() {
  background(255);
  w.walk();
  w.render();
}
