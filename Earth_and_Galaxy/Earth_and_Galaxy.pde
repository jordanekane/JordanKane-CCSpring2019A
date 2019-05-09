/* W: Rotate the sphere fowards
S: Roatate the sphere backwards
A: Rotate the sphere to the left
D: Rotate the sphere to the right
Space key: Reset the sphere to its original orientation
*/

JSONObject browse; //JSONArray holds an array of JSONObjects

ArrayList<Particle> particles;

//earth
float r = 100;

PImage earth;
PShape globe;

void setup () {
  size (600, 600, P3D);
  earth = loadImage("earth.jpg");
  noStroke();
  globe = createShape(SPHERE,r);
  globe.setTexture(earth);
  smooth();
 
browse = loadJSONObject("browse.json");

JSONArray near = browse.getJSONArray("near_earth_objects");
JSONObject test = near.getJSONObject(0);
//println(test);
//println(test.keys());

for (int i = 0; i < near.size(); i++) {
JSONObject astro = near.getJSONObject(i); 
//println(astro.keys().size());
if (astro.keys().size() != 11){
  continue; 
} else {
 JSONArray data = astro.getJSONArray("close_approach_data");
 println(data);
}
}
saveJSONArray(near, "new.json");

 
  particles = new ArrayList<Particle>();
  for(int i = 0; i < 200; i++){
    particles.add(new Particle());
    
    //particles.add (new Particle());
    
  }
 
}

void draw (){
  background (0);
  translate(width*0.5, height*0.5);
  lights();
  
  rotateX(map(mouseY, 0, height, -PI / 3, PI / 3));
  rotateZ(map(mouseX, 0, height, -PI / 16, PI / 16));
  
  for(Particle p: particles){
    p.display();
    p.update();
    
  noStroke();
  shape(globe);
  
}
}
