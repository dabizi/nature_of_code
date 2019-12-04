// Based on Daniel Shiffman's coding Train
// https://www.youtube.com/watch?v=rqecAdEGW6I
// More at The Nature of Code
// http://natureofcode.com

float[] randomCounts;

void setup() {
  size(640, 360);
  randomCounts = new float[20];
}

void draw(){
  background(255);
  
  int index = int(random(randomCounts.length));
  randomCounts[index]++;
  
  stroke(0);
  strokeWeight(2);
  fill(127);
  
  int w = width/randomCounts.length;
  
  for (int x = 0; x < randomCounts.length; x++) {
    rect(x*w, height-randomCounts[x], w-1, randomCounts[x]);
  }
}
