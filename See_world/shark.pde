class Shark extends Object {

  Shark(float xx, float yy, float ss, float tt) {
    super(xx, yy, ss, tt);
  
    s = ss;
    shark = loadImage("shark.png");
  }
  float  s;
  PImage shark;
  
  //boolean pau = true;
  void display() {

    //determine ocotopus' space
    fill(0, 0);
    ellipse(x, y, 100*0.1*s, 100*0.1*s);
    //ocotopus
    image(shark, x-5*s, y-5*s, 100*0.1*s, 100*0.1*s);
  }
  float watch() {
    //Set Life Box
    fill(0);
    rect(0, 10, 150, 50);
    //You're dieing
    fill(219, 20, 20);
    rect(0, 10, recWidth, 50);
    fill(255);
    textSize(30);   
    text("Life", 45, 45);  
    
    if (dist(mouseX, mouseY, x, y) < t + s) {
      fill(224, 56, 56, 80);
      rect(0, 0, width, height);
      fill(0);
      textSize(50);   
      text("Watch out Shark! ", width/2-230, height/2-25);
      recWidth -= 1;
    }
      if (recWidth < 0){
      fill(0,99);
      rect(0, 0, width, height);
      fill(255);
      textSize(50);   
      text("-GAME OVER ", 5, height/2-50);
      text("-Please restart the game", 5, height/2+10);
      fill(0);
      rect(160, 10, 200, 50);
      
      fill(255);
      textSize(40);   
      text("Point : "+int(point), 160, 50);
    }
   

    return recWidth;
  }
}
