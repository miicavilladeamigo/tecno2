//DIBUJA LAS ELLIPSES 

class Forma {

  float posX, posY, tam;
  Forma() {
    tam = 50;
  }
  void draw(float posX, float posY, float tam) {
    this.posX = posX;
    this.posY = posY;
    this.tam = tam;
    noStroke();
    ellipse(posX, posY, tam, tam);
  }
  void crearSalpicado() { //CREA ELLIPSES ALEATOREAS PARA GENERAR EL SAPICADO
    float t = random(5, 20);

    noStroke();
    ellipse(random(width), random(height), t, t);
  }
}
