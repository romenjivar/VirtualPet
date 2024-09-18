int rRandom = 0;
int gRandom = 0;
int bRandom = 0;
boolean shift = true;

void setup(){
  noLoop();
 size(600,600); 
}

void draw(){
  background(155,0,155);
  for(int y = -20; y < 600; y += 34)
  {
    for(int x = -20; x < 600; x += 30)
    {
    if(shift == true)
     scale(x+15,y); 
     else
     scale(x,y);
    }
    if(shift == true)
    shift = false;
    else
    shift = true;
  }
}

void scale(int x, int y){
  noStroke();
  rRandom = (int)(Math.random()*27+8);
  gRandom = (int)(Math.random()*130+70);
  bRandom = (int)(Math.random()*25+10);
 fill(0);
 rect(x,y,40,20);
 ellipse(x+20,y+20,40,40);
 fill(rRandom, gRandom, bRandom);
 rect(x+5,y+5,30,20);
 ellipse(x+20,y+20,30,30);
 

}
