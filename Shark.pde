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
fill(150,150,150);
ellipse(300,350,400,75);
fill(225,225,225);
ellipse(300,375,250,50);


}
