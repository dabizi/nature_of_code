class Walker {
   float x, y;
   
   Walker() {
      x = width/2;
      y = height/2;
   }
   
   void render(){
     stroke(0);
     fill(175);
     rectMode(CENTER);
     rect(x, y, 40, 40);
   }
   
   void walk(){
     float vx = random(-2, 2);
     float vy = random (-2, 2);
     x += vx;
     y += vy;
     
     //Stay on screen
     x = constrain(x, 0, width-1);
     y = constrain(y, 0, height-1);
   }
}
