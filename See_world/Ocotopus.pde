class Ocotopus extends Fish{

  Ocotopus(float xx, float yy, float ss, float tt){
    super(xx,yy,ss,tt);

    s = ss;
    ocotopus = loadImage("ocotopus.png");
  }
  float  s;
  PImage ocotopus;
  int i=0;
  void display(){
    
    //determine ocotopus' space
    fill(0,0);
    ellipse(x,y, 100*0.1*s, 100*0.1*s);
    //ocotopus
    image(ocotopus,x-5*s,y-5*s, 100*0.1*s, 100*0.1*s);

  }
  void watch(){
    if(dist(mouseX, mouseY, x, y) < t + s){
    fill(255);
    textSize(50);   
    text("Cute Ocotopus! ", width/2-230, height/2+25);
    
    
   }
   y += random(-4,4);
   
   //while(i <500){
   //  i++;
   //    if(i<30){y+=0.02;
   //    }else if(i>30 && i<50){y -= 0.02;
   //    }else if(i>50 && i<90){y+=0.02;}
   //  } //Failed 'moving it up and down'
  }
}
