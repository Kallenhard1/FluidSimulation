Fluid fluid;

void settings() {
  size(N * SCALE, N * SCALE);

}

void setup() {
  fluid = new Fluid(0.1, 0, 0);
  
}

void mouseDragged() {
  fluid.addDensity(mouseX/SCALE, mouseY/SCALE, 200);
  float amtX = mouseX - pmouseX;
  float amtY = mouseY - pmouseY;
  fluid.addVelocity(mouseX/SCALE, mouseY/SCALE, amtX, amtY);
}

void draw() {
  background(100);
  fluid.step();
  fluid.renderD();
  
}
