class Bubble{
  Bubble(){};
  Bubble(float xx, float yy, float ss){
    x=xx; y=yy; s=ss;
    by-=random(1,4);
    bs+=0.04;
  }
  float bx, by, bs; //bubble size
  float x,y,s;

  


  void bubblePop(){
    fill(0,0);
    rect(0,0,width,height);
    fill(255,200);
    ellipse(x, y, s, s);
    y+=by; s+=bs;
    
    if(y<0){
      y=800; s=5;
    }
  }
  
}
