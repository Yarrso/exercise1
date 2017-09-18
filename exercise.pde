PImage bg,hero,poo;
float heroW=80,heroH=120,pooW=95,pooH=45;
float ballY=0;
float shitPosition=0,shitHeadY,shitTailY,shitSpeed=1;
int flower;
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
  shitHeadY=min(shitHeadY,80);
  shitTailY=min(shitTailY,80);
  line(pooW/2, shitHeadY,pooW/2,shitTailY);
  shitPosition = ( shitPosition + shitSpeed ) % ( height );
  noStroke();
  fill(random(255), random(255), random(255));
  ellipse(width/2, 307-ballY , 10 , 10);
  ballY=(ballY+5)%height;
  fill(255, 255, 0);
  noStroke();
  arc(pooW/2, 80, 30, 30, radians(310-flower), radians(230+flower), PIE);
  flower=(flower+1)%40;
}
