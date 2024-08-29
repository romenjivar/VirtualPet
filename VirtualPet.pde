void setup()
{
 
size(600,600);
}
void draw() {

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

fill(255,255,255);
ellipse(175,330,50,50);
fill(0,0,0);
ellipse(162,330,30,30);

fill(175,175,175);
triangle(275,325,405,325,405,200);
triangle(235,350,295,350,305,445);
triangle(475,320,550,340,560,250);
triangle(480,365,550,340,545,400);
fill(125,225,225);
triangle(555,320,550,355,520,335);

}
