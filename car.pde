
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
  fill(150,150,150);
  drawCar();
   rect(75,45,150,305);
   rect(275,90,100,260);
   rect(420,30,115,320);

}


void drawCar(){
  //Road
  stroke(0);
  fill(150,150,150);
  //Main road
  rect(0,350,600,250);
  fill(75,75,75);
  //Borders
  rect(0,350,600,50);
  rect(0,550,600,50);
  //yellow lines
  fill(250,200,0);
  int x = 15;
  while(x<516)
  {
    rect(x,465,75,25);
   x = x + 125; 
  }
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
   drawCar();
   rect(75+mBuilds,45,150,305);
   rect(275+mBuilds,90,100,260);
   rect(420+mBuilds,30,115,320);
   mBuilds = mBuilds + 5;
   if(mBuilds>=525){
     mBuilds = mBuilds-525;
   }
     
   }
}
