void setup(){
 size(600,600); 
}

void draw(){
  background(155,0,155);
  for(int y = 0; y < 600; y += 40)
    for(int x = 0; x < 600; x += 40)
  scale(x,y);
}

void scale(int x, int y){
  noStroke();
 int rRandom = (int)(Math.random()*255);
 int gRandom = (int)(Math.random()*255);
 int bRandom = (int)(Math.random()*255);
 fill(rRandom, gRandom, bRandom);
 ellipse(x+20,y+20,40,40);
 rect(x,y,40,20);
 fill(155,0,155);
 ellipse(x+20,y+20,30,30);
 rect(x,y,40,20);
}
