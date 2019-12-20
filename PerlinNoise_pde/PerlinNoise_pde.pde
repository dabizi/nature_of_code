// Made with the Coding train tutorial


class Walker {
  PVector position;

  PVector noff;

  Walker() {
    position = new PVector(width/2, height/2);
    noff = new PVector(random(1000),random(1000));
  }

  void display() {
    strokeWeight(2);
    fill(255);
    stroke(0);
    ellipse(position.x, position.y, 48, 48);
  }

  // Randomly move up, down, left, right, or stay in one place
  void walk() {
    
    position.x = map(noise(noff.x),0,1,0,width);
    position.y = map(noise(noff.y),0,1,0,height);
    
    noff.add(0.01,0.01,0);
  }
}

Walker w;

void setup() {
  size(800, 800);
  frameRate(30);

  w = new Walker();
}

void draw() {
  background(0);
  w.walk();
  w.display();
}


/*
float t = 0;
float u = 0;
float v = 0;


void setup(){
  size(600, 400); 
}

void draw(){
  background(0);
  fill(255);
  
  t = t + 0.01;
  u = u + 0.01;
  v = v + 0.01;
  
  float x = noise(t);
  float y = noise(u);
  float size = noise(v);
  x = map(x, 0, 1, 0, width);
  y = map(y, 0, 1, 0, height);
  size = map(size, 0, 1, 0, 100);
  ellipse(x, y, size, size);
}*/
