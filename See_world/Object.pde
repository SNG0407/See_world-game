class Object {
  Object() {};
  Object(float xx, float yy, float ss, float tt) {
    x = xx; 
    y = yy;
    s = ss;
    t = tt;
    vx = random(-5,-3);
    
  }
  float x, y, s, t, vx, count;
  
  void move() {
    x += vx;
    
    
    // When x is on the left wall
    if (x < 0) x = 1300; //Let's put it beyond the right wall
    
  }
}
