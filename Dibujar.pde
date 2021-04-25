class Dibujar {
  Forma forma;
  Paleta paleta;
  Interaccion interaccion;
  Mancha manchas;


  Dibujar() {
    forma = new Forma();
    interaccion = new Interaccion();
    paleta = new Paleta();
    manchas = new Mancha();
  }
  void draw() {

    dibujarFormaExteriorAzul();
    formaInteriorAmarilla();
    formaExteriorRoja();
    dibujarFormaAzulDerecha();
    formaVerdeDerecha();
    formaRojaIzquierda();
    formaAzulIzquierda();
    formaAmarillaIzquierda();
  }
  void dibujarFormaExteriorAzul() {
    for (int i=0; i<360; i+=10) {
      float angulo = radians(i+frameCount);
      float distancia = 50;
      float posX = distancia*cos(angulo);
      float posY = distancia*sin(angulo);
      fill(255);
      if (mouseX<=600 && mouseY>530) {
        interaccion.mover = true;
      }
      if (interaccion.mover && !interaccion.seMovio) {
        fill(paleta.darColorAzul());
      }
      forma.draw(posX + 250, posY + 250, 50);
    }
  }
  void formaInteriorAmarilla() {
    for (int i=0; i<360; i+=10) {
      float angulo = radians(i+frameCount);
      float distancia = 5;
      float posX = distancia*cos(angulo);
      float posY = distancia*sin(angulo);
      fill(paleta.darColorAmarillo());
      forma.draw(posX + 250, posY + 250, 50);
    }
  }
  void formaExteriorRoja() {
    for (int i=0; i<360; i+=10) {
      float angulo = radians(i+frameCount);
      float distancia = 100;
      float posX = distancia*cos(angulo);
      float posY = distancia*sin(angulo);
      fill(255);
      if (mouseX <=600 && mouseY>500) {
        interaccion.mover = true;
      }
      if (interaccion.mover && !interaccion.seMovio) {
        fill(paleta.darColorRojo());
      }
      forma.draw(posX + 250, posY + 250, 50);
    }
  }



  void dibujarFormaAzulDerecha() {
    for (int i=0; i<360; i+=10) {
      float angulo = radians(i+frameCount);
      float distancia = 50;
      float posX = distancia*cos(angulo);
      float posY = distancia*sin(angulo);
      fill(paleta.darColorAzul());
      forma.draw(posX + 300, posY -100, 50);
    }
  }
  void formaVerdeDerecha() {
    for (int i=0; i<360; i+=10) {
      float angulo = radians(i+frameCount);
      float distancia = 5;
      float posX = distancia*cos(angulo);
      float posY = distancia*sin(angulo);
      fill(paleta.darColorVerde());
      forma.draw(posX + 300, posY -100, 50);
    }
  }
  void formaRojaIzquierda() {
    for (int i=0; i<360; i+=10) {
      float angulo = radians(i+frameCount);
      float distancia = 50;
      float posX = distancia*cos(angulo);
      float posY = distancia*sin(angulo);
      fill(paleta.darColorRojo());
      forma.draw(posX -300, posY + 50, 50);
    }
  }
  void formaAzulIzquierda() {
    for (int i=0; i<360; i+=10) {
      float angulo = radians(i+frameCount);
      float distancia = 20;
      float posX = distancia*cos(angulo);
      float posY = distancia*sin(angulo);
      fill( paleta.darColorAzul());
      forma.draw(posX -300, posY + 50, 50);
    }
  }
  void formaAmarillaIzquierda() {
    for (int i=0; i<360; i+=10) {
      float angulo = radians(i+frameCount);
      float distancia = 5;
      float posX = distancia*cos(angulo);
      float posY = distancia*sin(angulo);
      fill(paleta.darColorAmarillo());
      forma.draw(posX -300, posY + 50, 50);
    }
  }
}
