/* Jordan Kane
Homework #8 (?)
Creative Coding Spring 2019
Took particle system and attempted to creat it into a p5.js code. While some aspects worked
others did not, so I adjusted here and there to make it functional for this assignment.
Overall concept is still in place, just opposite of my original particle system.
*/ 

var attractors = [];
var particles = [];
var bgColor;

function setup() {
    createCanvas(400, 400);
    bgColor = color(random(255), random(255), random(255));

    for (var i = 0; i < 300; i++){
        particles.push(new Particle(random(width), random(height)));
    }
}

    function mousePressed() {
        attractors.push(createVector(mouseX, mouseY));
        bgColor = color(random(255), random(255), random(255));
    }

function draw() {
    background(bgColor);
    stroke (255);
    strokeWeight(4);

    for (var i = 0; i < attractors.length; i++) {
        stroke(0,255,0);
        point(attractors[i].x, attractors[i].y);
    }
    for (var i = 0; i < particles.length; i++) {
        var particle = particles[i];
        for (var j = 0; j < attractors.length; j++) {
            particle.attracted(attractors[j]);
    }
    particle.update();
    particle.show();
    }
}
