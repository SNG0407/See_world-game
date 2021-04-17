//call classes
Bubble bubble[];
Shark shark[];
Ocotopus oc1, oc2, oc3;
Yellow yellowFish[];


// call elements
float s = 0; //abjusting the size
float x_myIcon, y_myIcon, s_myIcon; //my icon position x, y
float ox1,oy1, os1,   ox2,oy2, os2;
float recWidth=150; //Life bar
float pauseControll;
int point;
PImage seeweed, seeweed2, shale;

void setup() {
  size(1200, 800);
  seeweed=loadImage("seeweed.png");
  seeweed2=loadImage("seeweed2.png");
  shale=loadImage("shale.png");

  x_myIcon = 100; // for controling my icon
  y_myIcon = 200;
  s_myIcon = 100;
  ox1 = 1200; oy1 = 100; os1 =random(5,10);
  
  oc1 = new Ocotopus(ox1, oy1, os1, s_myIcon); // x : for each of them to keep their own order
  oc2 = new Ocotopus(500, 200, 8, s_myIcon);
  oc3 = new Ocotopus(800, 500, 5, s_myIcon);
  shark = new Shark[6];
  for(int i=0; i<5;i++){
    shark[i] = new Shark(500+300*random(2,5), 100+150*i, 15, s_myIcon );
  }
  yellowFish = new Yellow[3];
  for(int i=0; i<3;i++){
    yellowFish[i] = new Yellow(1200+500*i, 200+200*i, 10, s_myIcon );
  }
  bubble = new Bubble[70];
  for(int i=0; i<69;i++){
    bubble[i] = new Bubble(random(1,1200),800-random(1,800),5);
  }
  
  
  frameRate(50);
}

void draw() {
  background(25, 137, 212);
  noStroke();
  // Ground
  fill(145, 98, 22);
  ellipse(600, 800, 1500, 350);
  
  //decoration
  deco(seeweed,30,620,100);  deco(seeweed,260,560,100);  deco(seeweed,900,height-250,180);
  //deco(seeweed2,30,620,150); deco(seeweed2,260,560,100);  deco(seeweed2,900,height-180,180);
  for(int i=0; i<10;i++){
    deco(seeweed2,200*i,height-180,180); 
  }
  //bubble 
  //for(int i=0; i<100;i++){  
  //}
  
  
  createMyIcon(mouseX, mouseY,s_myIcon);
  //call member function
    oc1.move();   oc1.display();   oc1.watch();    oc1.getPoint();
    oc2.move();   oc2.display();   oc2.watch();    oc2.getPoint();
    oc3.move();   oc3.display();   oc3.watch();    oc3.getPoint();
    
    for(int i=0; i<3;i++){
      yellowFish[i].move(); yellowFish[i].display(); 
      yellowFish[i].watch(); yellowFish[i].getPoint(); 
    } //YeollowFish
    
    for(int i=0; i<5;i++){
      shark[i].move(); shark[i].display(); shark[i].watch();
    } // Shark
    for(int i=0; i<69;i++){
      bubble[i].bubblePop();
    } // Shark
  // switching myIcon's position
  if(keyPressed){
    if(key == 'a') x_myIcon -= 5;
    else if(key=='d') x_myIcon += 5; 
    else if(key=='w') y_myIcon -= 5; 
    else if(key=='s') y_myIcon += 5; 
  }
    point = oc1.getPoint() + oc2.getPoint() + oc3.getPoint()+ yellowFish[1].getPoint() + yellowFish[2].getPoint() + yellowFish[0].getPoint();
  
   
    fill(255);
    textSize(40);   
    text("Point : "+int(point), 160, 50);
    
    pauseControll = shark[1].watch();
    if(pauseControll>-5) {
      loop();
    }else{noLoop();}
          
}
    
    
   
