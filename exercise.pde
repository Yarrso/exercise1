PImage bg, hero, BadGuy;
float hero_W=80, hero_H=120, BadGuy_W=95, BadGuy_H=45;
float ball_Y=0;
float shitPosition=0, shitHeadY, shitTailY, shitSpeed=1;
int flower;
void setup() 
{
  size(335, 400);
  bg= loadImage("bg.png");
  hero= loadImage("hero.png");
  BadGuy= loadImage("badguy.png");
}

void draw()
{
  //Background
  image(bg, 0, 0, 335, 400);

  //Hero
  image(hero, width/2-hero_W/2, height-hero_H, hero_W, hero_H);

  //Badguy
  image(BadGuy, 0, 0, BadGuy_W, BadGuy_H);

  //Bullet
  noStroke();
  fill(random(255), random(255), random(255));
  ellipse(width/2, 307-ball_Y, 10, 10);
  ball_Y=(ball_Y+5)%(312);

  //Shit
  stroke(#9F5000);
  strokeWeight(10);
  float shitHeadY = max(27, 26+shitPosition);
  float shitTailY= max(27, shitHeadY - 20);
  shitHeadY=min(shitHeadY, 350);
  shitTailY=min(shitTailY, 350);
  line(BadGuy_W/2, shitHeadY, BadGuy_W/2, shitTailY);
  shitPosition = ( shitPosition + shitSpeed ) % ( 350 );

  //Flower
  stroke(255, 255, 0);
  strokeWeight(3);
  line(BadGuy_W/2, 365, BadGuy_W/2, 400);
  noStroke();
  fill(255, 0, 0);
  arc(BadGuy_W/2, 350, 30, 30, radians(-50-flower), radians(230+flower), PIE);
  flower=(flower+1)%41;
}
