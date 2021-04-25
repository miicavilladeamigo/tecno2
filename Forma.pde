//DIBUJA LAS ELLIPSES 

class Forma {
  Resize resize;

  float posX, posY, tam;
  Forma(Resize resize) {
    this.resize = resize;
    tam = 50;
  }
  void draw(float posX, float posY, float tam, color darColores) {
    this.posX = posX;
    this.posY = posY;
    this.tam = tam;
    fill(darColores);
    noStroke();
    ellipse(posX, posY, tam, tam);
  }
  void crearSalpicado() { //CREA ELLIPSES ALEATOREAS PARA GENERAR EL SAPICADO
    float t = random(5, 20);

    noStroke();
    ellipse(random(width), random(height), t, t);
  }
}
