


void createMyIcon(float x,float y,float s){
  //face
  fill(204, 35, 27);
  circle(x, y, s);
  //eyes
  fill(0);
  arc(x,y,s,s,-PI/6,PI/8);
  rect(x,y-s/4,s*3/7,s/4);
  
  
  
}
