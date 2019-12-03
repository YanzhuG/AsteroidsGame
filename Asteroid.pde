class Asteroid extends Floater
{
 private int speed = (int)(Math.random()*2)-1;
 public Asteroid(){
   corners = 6; 
  int[] xS = {-5,-11,-5,6,13,7};
  int [] yS = {-8,0,8,10,0,-8};//the number of corners, a triangular floater has 3   
  xCorners = xS;   
  yCorners = yS;  
  myColor=color(255,255,255,(int)(Math.random()*15)+185);
  myCenterX=(int)(Math.random()*250);
  myCenterY=(int)(Math.random()*250);
  myPointDirection =  (int)(Math.random()*2)-1;
  myDirectionX=((int)(Math.random()*2)+1)*Math.pow(-1,(int)(Math.random()*2)+1);
  myDirectionY=((int)(Math.random()*2)+1)*Math.pow(-1,(int)(Math.random()*2)+1);
 }
 public void move(){
   turn(speed);
   super.move(); 
 }
}
