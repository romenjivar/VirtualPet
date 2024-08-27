void setup()
{
  background(255,255,255);
  size(400,400);
}

void draw()
{
  // THIS IS THE BACKGROUND
  noStroke();
  fill(100,100,100);
  rect(0,250,500,500);
  fill(0,200,200);
  rect(0,0,400,250);
  fill(255,255,0);
  arc(0,0,200,200,0,PI/2);
  stroke(0,0,0);
  // THIS IS THE CREEPER
  fill(40,165,0);
 rect(115,290,50,90);
 rect(235,290,50,90);
 rect(150,50,100,300); 
 rect(125,25,150,150);
 rect(125,300,50,90);
 rect(225,300,50,90);
 //EYES
   fill(25,25,25);
 rect(135,50,45,45);
 rect(220,50,45,45);
   fill(0,0,0);
  //MOUTH, FIRST 2 FOR EYES SMALL
 rect(155,70,25,25);
 rect(220,70,25,25);
 rect(177,95,45,50);
 rect(165,120,20,45);
 rect(213,120,20,45);
 noStroke();
 fill(25,25,25);
 rect(177,105,46,20);
}
