class Star //note that this class does NOT extend Floater
{
  private int myX,myY,mySize;
  public Star()
  {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    mySize = (int)(Math.random()*20);
  }
  public void show()
  {
    stroke(51,(int)(Math.random()*255),255);
    noFill();
    ellipse(myX,myY,mySize,mySize);
  }//your code here
}
