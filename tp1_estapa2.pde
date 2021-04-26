Dibujar dibujar;

void setup() {
  size(600, 600);
  dibujar = new Dibujar();
  background(255);
}
void draw() {
  //translate(300, 300);

  background(255);
  dibujar.draw();
}
