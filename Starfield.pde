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
 background(0,0,0);
  for (int i = 0; i < bob.length; i ++)
  {
   
    bob[i].show();
    bob[i].move();
   
  }
}
class NormalParticle
{
	//your code here
  int myColor;
  double myAngle, mySpeed;
  double myX, myY;

  NormalParticle()
  {
     myX = myY = 200;
     myAngle = Math.random()*6*Math.PI;
     mySpeed = Math.random()*5;
     myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    
  }
  void show()
  {
    fill(myColor);
    ellipse((float)myX,(float)myY,10,10);
  }
  void move()
  {
    myX = myX * Math.cos(myAngle)*mySpeed;
    myY = myY * Math.sin(myAngle)*mySpeed;
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
