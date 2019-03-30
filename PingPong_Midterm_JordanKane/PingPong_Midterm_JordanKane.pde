Ball myBall;
PaddleL pL;
PaddleR pR;


int scoreL = 0;
int scoreR = 0;

PFont font;

void setup () {
  size (800, 800);
  font = loadFont("AmericanTypewriter-Light-48.vlw");
  
  myBall = new Ball ();
  pL = new PaddleL ();
  pR = new PaddleR ();

}

void draw () {
  
  background (0);
  
  textFont (font);
  
  fill (30,214,37);
  text ("Ping Pong", 275, 50);
   
  fill (101, 179, 227);
  text (scoreL, 125, 50);
  
  fill (227, 101, 160);
  text (scoreR, 615, 50);
   
  myBall.show();
  myBall.act();
  
  pL.show();
  pL.act();
  
  pR.show();
  pR.act();
  
  
  // Initiate point if ball falls off left or right side
  if (myBall.x < myBall.d/2 || myBall.x > width - myBall.d/2) {
    scoreL++;
    myBall.x = width /2;
    myBall.y = height / 2;
  } 
  else if (myBall.x < myBall.d/2 || myBall.x < 1 + myBall.d/2) {
    scoreR++;
    myBall.x = width /2;
    myBall.y = height / 2;
  }
}
