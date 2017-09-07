PImage bg,hero,poo;
float heroW=80,heroH=120,pooW=95,pooH=45;
float ballY=0;
float shitPosition=0,shitHeadY,shitTailY,shitSpeed=1;
void setup() 
{
  size(335,400);
  bg= loadImage("bg.png");
  hero= loadImage("hero.png");
  poo= loadImage("poo.png");
}

void draw()
{
  image(bg,0,0,335,400);
  image(hero,width/2-heroW/2,height-heroH,heroW,heroH);
  image(poo,0,0,pooW,pooH);
  stroke(#9F5000);
  strokeWeight(10);
  float shitHeadY = max(27, 27+shitPosition);
  float shitTailY= max(27, shitHeadY - 20);
  line(pooW/2, shitHeadY,pooW/2,shitTailY);
  shitPosition = ( shitPosition + shitSpeed ) % ( height );
  noStroke();
  fill(random(255), random(255), random(255));
  ellipse(width/2, 307-ballY , 10 , 10);
  ballY=(ballY+5)%height;
}