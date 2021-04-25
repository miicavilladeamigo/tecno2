Dibujar dibujar;

void setup() {
  size(600, 600);
  //surface.setResizable(true);//permite poner la pantalla completa (redimencionarla).
  dibujar = new Dibujar();
  background(255);

}
void draw() {
  translate(300, 300);

  background(255);
  dibujar.draw();
}
