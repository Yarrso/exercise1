PImage bg, hero, BadGuy;
float heroW=80, heroH=120, badGuyW=95, badGuyH=45;
float bulletR=10,bulletSpeed=5,bulletY=0;
float shitPosition=0, shitHeadY, shitTailY, shitSpeed=1,shitLength=20;
float openAngle;
float maxOpenAngle =40;
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
  image(hero, width/2-heroW/2, height-heroH, heroW, heroH);

  //Badguy
  image(BadGuy, 0, 0, badGuyW, badGuyH);

  //Bullet
  noStroke();
  fill(random(255), random(255), random(255));  //RGB
  ellipse(width/2, 307-bulletY, bulletR, bulletR);  //307=height-heroH+fingerY=400-120+27
  bulletY=(bulletY+bulletSpeed)%(312); //312=height-heroH+fingerY+bulletR/2=400-120+27+5

  //Shit
  stroke(#9F5000);
  strokeWeight(10);
  shitPosition = ( shitPosition + shitSpeed ) % ( 350 );
  shitHeadY = min( 27+shitPosition , 350);
  shitTailY= max(27, 27+shitPosition - shitLength);
  line(badGuyW/2, shitHeadY, badGuyW/2, shitTailY);
  
  //Flower
  stroke(255, 255, 0);
  strokeWeight(3);
  line(badGuyW/2, 365, badGuyW/2, 400);
  noStroke();
  fill(255, 0, 0);
  arc(badGuyW/2, 350, 30, 30, radians(-50-openAngle), radians(230+openAngle), PIE);
  openAngle=(openAngle+1)%(maxOpenAngle+1);
}
