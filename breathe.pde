// global variables
int rows = 4;
int cols = 10;
int mult = 100;  //  pixel coordinate scale for x and y
int off = 50;    // offset between rows and cols
float wid = 10;  // width of shape
float hgt = 10;  // height of shape
float inc = .05;
float max = 100.0;    //  max size when breathing
float time = 0.0;
float r,g,b = 255.0;
float a = 0.0;

void settings() {
  int sizeh = cols * mult;
  int sizev = rows * mult;
  size(sizeh, sizev);
}

void setup() {
}

void draw() {
  background(255);
  for (int x = 0; x < cols; x++) {    // x coordinate for rows loop
    for (int y = 0; y < rows; y++) {  // y coordinate for cols loop
      fill(r,g,b,a);
      ellipse(x*mult+off, y*mult+off, wid, hgt);  // draw shapes in rows and cols
    }
    
  }
  
  time+=inc;
  breatheShape();
  
}

void breatheShape() {
  wid = sin(time) * max;
  hgt = sin(time) * max;
  a = abs(sin(time)) * max;
}
