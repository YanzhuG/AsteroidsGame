class Asteroid extends Floater
{
 private int speed;
 public Asteroid(){
   speed = (int)(Math.random()*3)-1;
   corners = 6;
   int t = (int)(Math.random()*3)+1;
  int[] xS = {-5*t,-11*t,-5*t,6*t,13*t,7*t};
  int [] yS = {-8*t,0*t,8*t,10*t,0*t,-8*t};//the number of corners, a triangular floater has 3   
  xCorners = xS;   
  yCorners = yS;  
  myColor=color(255,255,255,(int)(Math.random()*15)+185);
  myCenterX=(int)(Math.random()*250);
  myCenterY=(int)(Math.random()*250);
  myPointDirection =  (int)(Math.random()*2)-1;
  myDirectionX=((int)(Math.random()*2)+1)*Math.pow(-1,(int)(Math.random()*2)+1);
  myDirectionY=((int)(Math.random()*2)+1)*Math.pow(-1,(int)(Math.random()*2)+1);
 }
 public void disappear(){
   myCenterX=myCenterY=1000;
 }
 public void move(){
   turn(speed);
   super.move(); 
 }
 public float getAX(){
   return (float)(myCenterX);
 }
 public float getAY(){
   return (float)(myCenterY);
 }

}
