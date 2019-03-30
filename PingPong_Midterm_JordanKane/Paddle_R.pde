class PaddleR {

  float x, w, h;
  int y = 400;
  
  PaddleR() {
  x = width/2;
  }
  
  void show () {
  
  noStroke();
  fill (227, 101, 160);
  rect (730, y, 30, 100);
 
  }
  
  void act () {
  // Allows you to move RIGHT paddle up and down with I & K key.
    if (keyPressed == true && key == 'i') {
    y = y - 8;
  } 
  
    if (keyPressed == true && key == 'k') {
    y = y + 8;
  }
    
    //Stops paddle from going off top or bottom of screen
    if(y - h/2 < 0) {
      y = y + 8;
    }

    if(y + h/2 > 730) {
      y = y - 8;
    }

    // Creates collision function with ball on RIGHT paddle
      if (myBall.x >= 715 && myBall.y > y && myBall.y < (y + 100)) {
    myBall.vx = -myBall.vx;
  }
 }
}
