//your code here
Particle[] bob;

void setup()
{
  //your code here
  size(500, 500);
  //frameRate(50);

  bob = new Particle[1000];
   bob[0] = new OddballParticle(); 
   bob[3] = new JumboParticle();
  for (int i=1; i < bob.length; i++)
    bob[i] = new NormalParticle();

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
    myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }
  void show()
  {
    fill(myColor);
    ellipse((float)myX, (float)myY, 10, 10);
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
  private double myX,myY;
  private double myAngle, mySpeed;
  
  void show()
  {
    fill(255,0,0);
    rect((float)myX,50,50,50);
  }
  void move()
  {
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
}
}
class JumboParticle extends NormalParticle//uses inheritance
{
  //your code here
  public void show()
  {
    fill(255,0,0);
    ellipse((float)myX,(float)myY,200,100);
  }
}
