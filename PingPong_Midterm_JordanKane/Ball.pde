class Ball {

  float x, y, vx, vy, d;
  
  Ball () {
    x = width/2;
    y = height/2;
    vx = random (3, 7);
    vy = random (3, 7);
    d = 30;
  }
  
  void show () {
    
    noStroke();
    fill (20, 214, 37);
    ellipse (x, y, d, d);
  }

  void act () {
    // Used to make my ball move around the screen
    x = x + vx;
    y = y + vy;
    
    // Restricts ball from falling off top or bottom of screen
    if (y < d/2 || y > height-d/2) {
    vy = -vy;
    }
  }
}
