Spaceship a =new Spaceship();
Star [] nightSky = new Star[200];
ArrayList <Asteroid> ast = new ArrayList<Asteroid>();//your variable declarations here
public void setup() 
{

  size(500, 500);
  background(19, 52, 99);
  for (int i=0; i<nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
  for (int i=0; i<10; i++)
  {
    ast.add(new Asteroid());
  }//your code here
}
public void draw() 
{
  fill(19, 52, 99, 100);
  rect(0, 0, 500, 500);
  for (int i =0; i<nightSky.length; i++)
  {
    nightSky[i].show();
  }
  a.show();
  a.move();
  for (int i =0; i<ast.size(); i++)
  {
    if (
      dist(
      (float)(a.myCenterX), 
      (float)(a.myCenterY), 
      (float)(ast.get(i).getAX()), 
      (float)(ast.get(i).getAY()))<30)
    {
      ast.remove(i);
    } else {
      ast.get(i).show();
      ast.get(i).move();
    }
  }

  //your code here
}
public void disappear() {
}
public void keyPressed() {
  if (key=='h') {
    a.accelerate(.5);
  }
  if (key=='a') {
    a.turn(20);
  }
  if (key=='d') {
    a.turn(-20);
  }
  if (key=='s')
  {
    a.myCenterX=(int)(Math.random()*500);
    a.myCenterY=(int)(Math.random()*500);
  }
}
