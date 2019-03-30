class PaddleL {

  float x, w, h;
  int y = 400;
  
  PaddleL () {
  x = width/2;
  }
  
  void show () {
  
  noStroke();
  fill (101, 179, 227);
  rect (20, y, 30, 100);
 
  }
  
  void act () {
  
    // Allows you to move LEFT paddle up and down with W & S key.
    if (keyPressed == true && key == 'w') {
    y = y - 8;
  } 
  
    if (keyPressed == true && key == 's') {
    y = y + 8;
  }
  
  //Stops paddle from going off top or bottom of screen
  if(y - h/2 < 0) {
    y = y + 8;
  }

  if(y + h/2 > 730) {
    y = y - 8;
  }
    
    // Creates collision function with ball on LEFT paddle
  if (myBall.x <= 75 && myBall.y > y && myBall.y < (y + 100)) {
    myBall.vx = -myBall.vx;
  }
 }
}
