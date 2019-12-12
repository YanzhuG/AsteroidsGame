class Bullet extends Floater{
  public Bullet(Spaceship theShip){
 myCenterX=a.getAX();
 myCenterY=a.getAY();
 myPointDirection=a.getAD();
 double dRadians =myPointDirection*(Math.PI/180);
 myDirectionX = 5 * Math.cos(dRadians) + a.myDirectionX;
 myDirectionY = 5 * Math.sin(dRadians) + a.myDirectionY;
  }
  public void show(){
    noFill();   
    stroke(255);
    ellipse((float)myCenterX,(float)myCenterY,5,5);
}
public void move(){
 super.move();
}
}
