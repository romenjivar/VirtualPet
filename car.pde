import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

public void settings() {
  size(600, 600);
}

public void setup() {
  arduino = new Arduino(this, Arduino.list()[1], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work
//buildings
  background(125,225,225);
  drawRoad();
  //buildings
  noStroke();
  fill(200,200,200);
   rect(75,45,150,305);
   rect(275,90,100,260);
   rect(420,30,115,320);
   //yellow lines
   fill(250,200,0);
  rect(15,465,75,25);
  rect(140,465,75,25);
  rect(265,465,75,25);
  rect(390,465,75,25);
  rect(515,465,75,25);
  drawCar1();

}


void drawCar1(){
  //Car
   noStroke();
   fill(255,0,0);
   rect(200,400,200,50);
   rect(225,360,100,40);
   triangle(325,360,325,400,380,400);
   stroke(0);
   fill(100,100,255);
   triangle(330,365,330,405,385,405);
   //Wheels
   noStroke();
   fill(0,0,0);
   ellipse(250,450,50,50);
   ellipse(350,450,50,50);
   fill(200,200,200);
   ellipse(250,450,30,30);
   ellipse(350,450,30,30);
    
   
}

  void drawCar2(){
  //Car
  noStroke();
  fill(255,0,0);
  rect(200,400,200,50);
  rect(280,360,100,40);
  triangle(280,360,280,400,225,400);
  stroke(0);
  fill(100,100,255);
  triangle(285,365,285,405,230,405);
  //Wheels
  noStroke();
  fill(0,0,0);
  ellipse(250,450,50,50);
  ellipse(350,450,50,50);
  fill(200,200,200);
  ellipse(250,450,30,30);
  ellipse(350,450,30,30);
    
}
void drawRoad(){
 //Road
  stroke(0);
  fill(150,150,150);
  //Main road
  rect(0,350,600,250);
  fill(75,75,75);
  //Borders
  rect(0,350,600,50);
  rect(0,550,600,50); 
}
void axies(){
   
  line(mouseX, mouseY, mouseX, mouseY);
  fill(0,0,0);
  text(mouseX + ", "+mouseY,20,20);
}

int mBuilds = 0;
int mRoad = 0;
public void draw() {
  for(int i = 0; i < 16; i++)
    System.out.print(i+" "+arduino.analogRead(i) + "\t");
  System.out.println();
   
   
   
  int rightButton = arduino.analogRead(6);
  int leftButton = arduino.analogRead(1);
   if(rightButton >= 503){
   background(125,225,225);
   drawRoad();
   noStroke();
   fill(200,200,200);
   rect(-95+mBuilds,150,150,200);
   rect(-275+mBuilds,25,100,325);
   rect(-420+mBuilds,225,115,125);
   rect(75+mBuilds,45,150,305);
   rect(275+mBuilds,90,100,260);
   rect(420+mBuilds,30,115,320);
   mBuilds = mBuilds + 5;
   if(mBuilds>=525){
     mBuilds = mBuilds-525;
   }
  fill(250,200,0);
  rect(15+mRoad,465,75,25);
  rect(140+mRoad,465,75,25);
  rect(265+mRoad,465,75,25);
  rect(390+mRoad,465,75,25);
  rect(515+mRoad,465,75,25);
  rect(640+mRoad,465,75,25);
  rect(765+mRoad,465,75,25);
  rect(890+mRoad,465,75,25);
  rect(1015+mRoad,465,75,25);
  rect(1140+mRoad,465,75,25);
  mRoad = mRoad - 5;
  if(mRoad<= -500){
   mRoad = mRoad + 500; 
  }
  drawCar1();
    
   
  }
  
  if(leftButton>=503){
   background(125,225,225);
   drawRoad();
   noStroke();
   fill(200,200,200);
   rect(75+mBuilds,45,150,305);
   rect(275+mBuilds,90,100,260);
   rect(420+mBuilds,30,115,320);
   rect(550+mBuilds,150,150,200);
   rect(740+mBuilds,25,100,325);
   rect(870+mBuilds,225,115,125);
   mBuilds = mBuilds - 5;
   if(mBuilds<=-525){
    mBuilds = mBuilds + 525; 
   }
   fill(250,200,0);
  rect(-610+mRoad,465,75,25);
  rect(-485+mRoad,465,75,25);
  rect(-360+mRoad,465,75,25);
  rect(-235+mRoad,465,75,25);
  rect(-110+mRoad,465,75,25);
  rect(15+mRoad,465,75,25);
  rect(140+mRoad,465,75,25);
  rect(265+mRoad,465,75,25);
  rect(390+mRoad,465,75,25);
  rect(515+mRoad,465,75,25);
  
  mRoad = mRoad + 5;
  if(mRoad>= 500){
   mRoad = mRoad - 500; 
  }
  drawCar2();
  }
  
}
