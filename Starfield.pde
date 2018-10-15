//your code here
NormalParticle[] bob;
void setup()
{
	//your code here
size(300,300);

bob = new NormalParticle[1000];
  for(int i=0; i < bob.length; i++)
    bob[i] = new NormalParticle();
}
void draw()
{
	//your code here
  for (int i = 0; i < bob.length; i ++)
  {
    bob[i].show();
    bob[i].move();
   
  }
}
class NormalParticle
{
	//your code here
  double myAngle, mySpeed;
  double myX, myY;

  NormalParticle()
  {
     myX = 200;
     myY = 240;
     myAngle = 2.03;
     mySpeed = 8.25;
    
  }
  void show()
  {
    fill(0,0,0);
    ellipse((float)myX,(float)myY,5,5);
  }
  void move()
  {
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.cos(myAngle)*mySpeed;
}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
  
}
