JSONObject browse; //JSONArray holds an array of JSONObjects

ArrayList<Particle> particles;

JSONArray neardata;
float distance;
float size;

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

for (int i = 0; i < near.size(); i++) {
JSONObject astro = near.getJSONObject(i); 
if (astro.keys().size() != 11){
  continue; 
} else {
 JSONArray data = astro.getJSONArray("close_approach_data");
  println(data);
}
}
//saveJSONArray(near, "new.json"); //saves new information into new file

neardata = near;

//JSONArray miss = browse.getJSONArray("close_approach_data");
 
  particles = new ArrayList<Particle>();
  for(int i = 0; i < neardata.size(); i++){ 
    
    //INSERT JSON CODE HERE
    //for (int i = 0; i < near.json.size(); i++){
    JSONObject currobj = near.getJSONObject(i);
    JSONObject diam = currobj.getJSONObject("estimated_diameter");
    // Everytime I try and call distance, or velocity it prints null ??????
    JSONObject dist = currobj.getJSONObject("astronomical");
    
    diam = diam.getJSONObject("feet");
    println (diam + "," + dist);

  //MATH (size)
  float size = (0.001*diam.getInt("estimated_diameter_max"))
+ (0.001*diam.getInt("estimated_diameter_min"));
  
    particles.add (new Particle(size)); 
    
    /* The distance of the particles from the earth are still random Gaussian, 
    because the needed info is not an int and i could not get it to print (dist). HOWEVER
    THE SIZES OF THE PARTICLES ARE ACCURATE AND I USED THE CORRECT MATH TO MAKE IT 
    HAPPEN^^^^^ AS SEEN ABOVE!!!!
    */
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
