import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

public void setup() {
  size(600, 600);
  arduino = new Arduino(this, Arduino.list()[1], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work
}

public void draw() {
  background(192);
  float x = arduino.analogRead(5);
  if(x<20)
    x = -10;
  if(x>100)
    x= 100;
  System.out.println(x);


background(125,225,225);
line(mouseX, mouseY, mouseX, mouseY);
fill(0,0,0);
text(mouseX + ", "+mouseY,20,20);

noStroke();
fill(175,175,175);
ellipse(300,350,400,75);
ellipse(315,325,300,60);
triangle(440,308,470,370,550,340);
fill(225,225,225);
ellipse(290,370,250,35);
//eyes
fill(255,255,255);
ellipse(175,330,50+x,50+x);
fill(0,0,0);
ellipse(162,330,30+x,30+x);

fill(175,175,175);
//back fin 
triangle(275,325,405,325,405,200);
//arm fin  
triangle(235,350,295,350,305 + x,445);
//top tail part
triangle(475,320,550,340,560,250);
//bottom tail part 
triangle(480,365,550,340,545,400);
fill(125,225,225);
//fill tail part
triangle(555,320,550,355,520,335);

}
