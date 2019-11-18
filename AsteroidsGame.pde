 Spaceship a =new Spaceship();
 Star [] nightSky = new Star[200];///your variable declarations here
public void setup() 
{
  background(19,52,99);
 size(500,500);
 for (int i=0;i<nightSky.length;i++)
 {
   nightSky[i] = new Star();
 }//your code here
}
public void draw() 
{
  fill(19,52,99,100);
  rect(0,0,500,500);
  for(int i =0;i<nightSky.length;i++)
  {
    nightSky[i].show();
  }
 a.show();
 a.move();
 //your code here
}
public void keyPressed(){
  if(key=='h'){
    a.accelerate(.5);
  }
  if(key=='a'){
    a.turn(20);
  }
  if(key=='d'){
    a.turn(-20);
  }
  if(key=='s')
   {
     a.myCenterX=(int)(Math.random()*500);
     a.myCenterY=(int)(Math.random()*500);
   }
}
