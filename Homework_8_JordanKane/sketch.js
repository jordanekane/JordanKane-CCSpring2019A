/* Jordan Kane 
Homework # 8 - Creative Coding Sp19
create a natural/physical phenomenon
I created raindrops falling to show a weather phenomenon
*/

var particles = [];

function setup() {
  createCanvas(600, 600);
  ellipseMode(RADIUS);
  noFill();
}

function draw() {
  background(255);
  if (particles.length < 200) particles.push(new Particle());
  for (var i = 0; i < particles.length; i++) {
    particles[i].update();
    particles[i].display();
  }
}

