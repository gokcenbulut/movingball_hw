

float k=250;
float t=300;
float x=-10;
float y=-10;
float dx = 0;
float dy = 0;

float accx = 0.5;
float accy = 0.8;

boolean isClicked= true;

void setup() {
  size(600, 600);
  


  
}
   

void draw() {
  
    background(#FEDBFF);
   
    fill(#FA0DFF);
    rect(k,t,100,40);
     fill (#FFFFFF);
    text("START",k+30,t+20);
    displayBall();
    moveBall();
    checkEdges(); 
 
}

void displayBall() {
    fill(#0A4493);
    ellipse(x, y, 30, 30);
    noStroke();
}

 void checkEdges() {
    
  if (x+18 > width || x-18 < 0)
  {
    accx = random(2,7);
    dx = dx*-1;
  }

  if ( y+18 > height || y-18 < 0) {
    accy = random(2,7);
    dy = dy*-1;
  }
 }

void moveBall() {
  x = x+accx*dx;
  y = y+accy*dy;
  
}
  
 




void mouseClicked() {
  if(mouseY>300 && mouseY<340 && mouseX>250 && mouseX<350) {
    isClicked=true;
     k=1000;
     t=1000;
     dx=1;
     dy=1;
     x=width*0.5;
     y=height*0.5;
   
   
     
  }else{
    isClicked=false;
     rect(250,300,100,40);
       
  } 
  
}