class Dibujar {
  Resize resize = new Resize();
  Forma forma;
  Paleta paleta;
  Interaccion interaccion;
  Mancha manchas;

  Dibujar() {
    forma = new Forma(resize);
    interaccion = new Interaccion();
    paleta = new Paleta();
    manchas = new Mancha();
  }
  void draw() {
    interaccion.actualizar();
    manchas.draw();

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
      forma.draw(posX + 250, posY + 250, 50, paleta.darColorAzul());
    }
  }
  void formaInteriorAmarilla() {
    for (int i=0; i<360; i+=10) {
      float angulo = radians(i+frameCount);
      float distancia = 5;
      float posX = distancia*cos(angulo);
      float posY = distancia*sin(angulo);
      fill(#F7DC6F);
      forma.draw(posX + 250, posY + 250, 50, paleta.darColorAmarillo());
    }
  }
  void formaExteriorRoja() {
    for (int i=0; i<360; i+=10) {
      float angulo = radians(i+frameCount);
      float distancia = 100;
      float posX = distancia*cos(angulo);
      float posY = distancia*sin(angulo);
      fill(#F7DC6F);
      forma.draw(posX + 250, posY + 250, 50, paleta.darColorRojo());
    }
  }

  void dibujarFormaAzulDerecha() {
    for (int i=0; i<360; i+=10) {
      float angulo = radians(i+frameCount);
      float distancia = 50;
      float posX = distancia*cos(angulo);
      float posY = distancia*sin(angulo);
      fill(#F7DC6F);
      forma.draw(posX + 300, posY -100, 50, paleta.darColorAzul());
    }
  }
  void formaVerdeDerecha() {
    for (int i=0; i<360; i+=10) {
      float angulo = radians(i+frameCount);
      float distancia = 5;
      float posX = distancia*cos(angulo);
      float posY = distancia*sin(angulo);
      fill(#F7DC6F);
      forma.draw(posX + 300, posY -100, 50, paleta.darColorVerde());
    }
  }
  void formaRojaIzquierda() {
    for (int i=0; i<360; i+=10) {
      float angulo = radians(i+frameCount);
      float distancia = 50;
      float posX = distancia*cos(angulo);
      float posY = distancia*sin(angulo);
      fill(#F7DC6F);
      forma.draw(posX -300, posY + 50, 50, paleta.darColorRojo());
    }
  }
  void formaAzulIzquierda() {
    for (int i=0; i<360; i+=10) {
      float angulo = radians(i+frameCount);
      float distancia = 20;
      float posX = distancia*cos(angulo);
      float posY = distancia*sin(angulo);
      fill(#F7DC6F);
      forma.draw(posX -300, posY + 50, 50, paleta.darColorAzul());
    }
  }
  void formaAmarillaIzquierda() {
    for (int i=0; i<360; i+=10) {
      float angulo = radians(i+frameCount);
      float distancia = 5;
      float posX = distancia*cos(angulo);
      float posY = distancia*sin(angulo);
      fill(#F7DC6F);
      forma.draw(posX -300, posY + 50, 50, paleta.darColorAmarillo());
    }
  }
  void circulosSueltos() {
  }
}
