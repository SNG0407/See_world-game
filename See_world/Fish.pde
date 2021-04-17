class Fish extends Object {

  Fish(float xx, float yy, float ss, float tt) {
    super(xx, yy, ss, tt);
    count = 0;
  }
  int count;
  int getPoint() {
    if (dist(mouseX, mouseY, x, y) < t + s) {
      count +=1;
      x = 1300;
    } return count;
  }
  
}
