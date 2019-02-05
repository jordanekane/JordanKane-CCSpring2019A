/* Jordan Kane 
Creative Coding HW
02/05/2019
*/

void setup (){
  size(600, 800);
  
  background (16, 52, 95);
  
triangle(0, 0, 0, 300, 300, 0);
triangle(600, 800, 600, 500, 300, 800);

// skewed quads
quad(0, 500, 0, 700, 150, 800, 150, 600);
quad(450, 0, 450, 200, 600, 300, 600, 100);

rect (150, 150, 200, 200);
rect (250, 450, 200, 200);

}

void draw (){
  
}
