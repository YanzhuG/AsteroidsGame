class Spaceship extends Floater //extends Floater  
{   
  public Spaceship(){
  corners = 22; 
  int[] xS = {12,8,-3,-1,-13,-7,-8,-9,-10,-12,-11,-14,-11,-12,-10,-9,-8,-7,-13,-1,-3,8};
  int [] yS = {0,4,4,6,8,3,2,1,2,2,1,0,-1,-2,-2,-1,-2,-3,-8,-6,-4,-4};//the number of corners, a triangular floater has 3   
  xCorners = xS;   
  yCorners = yS;  
  myColor=255;
  myCenterX=myCenterY=250;
  myPointDirection = 0;
}
  
}
