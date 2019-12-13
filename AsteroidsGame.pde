Spaceship shipA =new Spaceship();
Star [] nightSky = new Star[200];
ArrayList <Asteroid> ast = new ArrayList<Asteroid>();
ArrayList <Bullet> blt = new ArrayList<Bullet>();//your variable declarations here
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
  }
  //your code here
}
public void draw() 
{
  fill(19, 52, 99, 100);
  rect(0, 0, 500, 500);
  for (int i =0; i<nightSky.length; i++)
  {
    nightSky[i].show();
  }
  shipA.show();
  shipA.move();
  for (int i =0; i<ast.size(); i++)
  {
    if (
      dist(
      (float)(shipA.myCenterX), 
      (float)(shipA.myCenterY), 
      (float)(ast.get(i).getAX()), 
      (float)(ast.get(i).getAY()))<30)
    {
      ast.remove(i);
    } else {
      ast.get(i).show();
      ast.get(i).move();
    }
    for (int j =0; j<blt.size(); j++)
    {
      for (int k =0; k<ast.size(); k++)
      {
      if (
        dist(
        (float)(blt.get(j).myCenterX), 
        (float)(blt.get(j).myCenterY), 
        (float)(ast.get(k).getAX()), 
        (float)(ast.get(k).getAY()))<30)
      {
        blt.remove(j);
        ast.remove(k);
        break;
      }
      }
    }
  }
  for(int q=0;q<blt.size();q++){

      blt.get(q).show();
      blt.get(q).move();
    }

  //your code here
}

public void keyPressed() {
  if (key=='h') {
    shipA.accelerate(.5);
  }
  if (key=='a') {
    shipA.turn(20);
  }
  if (key=='d') {
    shipA.turn(-20);
  }
  if (key=='s')
  {
    shipA.myCenterX=(int)(Math.random()*500);
    shipA.myCenterY=(int)(Math.random()*500);
  }
  if (key=='b') {
    blt.add(new Bullet(shipA));
  }
}
