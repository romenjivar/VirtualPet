void setup()
{
size(400,400);
}
void draw() {

  background(204);
  line(mouseX, mouseY, mouseX, mouseY);
  
text(mouseX + ", "+mouseY,20,20);

}
