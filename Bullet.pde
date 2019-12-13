class Bullet extends Floater {
  public Bullet(Spaceship theShip) {
    myCenterX=theShip.getAX();
    myCenterY=theShip.getAY();
    myPointDirection=theShip.getAD();
    double dRadians =myPointDirection*(Math.PI/180);
    myDirectionX = 5 * Math.cos(dRadians) + theShip.myDirectionX;
    myDirectionY = 5 * Math.sin(dRadians) + theShip.myDirectionY;
  }
  public void show() {
    noFill();   
    stroke(255);
    ellipse((float)myCenterX, (float)myCenterY, 5, 5);
  }
  public void move() {
    super.move();
  }
}
