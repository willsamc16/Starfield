Particle[] bob;

void setup()
{
  //your code here
  size(500, 500);
  //frameRate(50);

  bob = new Particle[2000];
  bob[0] = new OddballParticle(); 
  bob[3] = new JumboParticle();
  for (int i=1; i < bob.length; i++)
    bob[i] = new NormalParticle();
    bob[3] = new JumboParticle();
}
void draw()
{
  //your code here
  background(0, 0, 0);
  for (int i = 0; i < bob.length; i ++)
  {

    bob[i].show();
    bob[i].move();
  }
}
class NormalParticle implements Particle
{
  //your code here
  int myColor;
  double myAngle, mySpeed;
  double myX, myY;

  NormalParticle()
  {
    myX = myY = 250;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*9;
    myColor = color((int)(Math.random()*255), (int)(Math.random()*80), (int)(Math.random()*80));
  }
  void show()
  {
    fill(myColor);
    ellipse((float)myX, (float)myY, 6, 6);
    fill(255,255,255);
    ellipse((float)myX*30, (float)myY, 6, 6);
     ellipse((float)myX*70, (float)myY+40, 8, 8);
  }
  void move()
  {
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
  }
}
interface Particle
{
  //your code here

  public void show();
  public void move();
}
class OddballParticle implements Particle //uses an interface
{
  //your code here
  double myX, myY;
  double myAngle, mySpeed;

  void show()
  {
    fill(135, 221, 255);
    ellipse((float)myX, 130, 50, 50);
    fill(128,144,149);
    ellipse((float)myX, 150, 100, 30);
  }
  void move()
  {
    myX = myX + ((int)(Math.random()*22)-10);
    myY = myY + ((int)(Math.random()*22)-10);
  }
}
class JumboParticle extends NormalParticle//uses inheritance
{
  //your code here
  JumboParticle()
  {
    myX = 300;
    myY = 300;
    mySpeed = 2;
  }
  public void show()
  {
    fill(191, 203, 205);
    ellipse((float)myX, (float)myY, 200, 200);
    fill(79,94,98);
    noStroke();
    ellipse((float)myX, (float)myY, 20, 20);
    ellipse((float)myX+40, (float)myY-20, 20, 20);
    ellipse((float)myX+45, (float)myY+70, 20, 20);
    ellipse((float)myX+60, (float)myY-66, 20, 20);
    ellipse((float)myX-40, (float)myY+60, 20, 20);
    ellipse((float)myX-80, (float)myY, 20, 20);
    ellipse((float)myX-60, (float)myY-50, 20, 20);
  }
}
