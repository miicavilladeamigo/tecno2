class Dibujar {
  Forma forma;
  Paleta paleta;
  Interaccion interaccion;
  ArrayList <Mancha> gmanchas;
  ArrayList <Mancha> mmanchas;
  ArrayList <Mancha> ccmanchas;


  Dibujar() {
    forma = new Forma();
    interaccion = new Interaccion();
    paleta = new Paleta();
    pushStyle();
    imageMode( CENTER );
    gmanchas = new ArrayList <Mancha>();
    for (int i = 0; i < 10; i++ ) {
      gmanchas.add ( new Mancha(random(width), random(height), int(random(0, 3)), 270));
    }
    mmanchas = new ArrayList <Mancha>();

    for (int i = 0; i < 16; i++ ) {
      mmanchas.add (new Mancha(random(width - 100), random(height - 100), int(random(4, 13)), random(360)));
    }
    popStyle();
  }
  void draw() {

    //----ESTO DIBUJA LAS IMAGENES 
    dibujarManchas();

    //----ESTO DIBUJA LAS ELLIPSES

    formaExteriorRoja();
    dibujarFormaExteriorAzul();
    formaInteriorAmarilla();
    dibujarFormaAzulDerecha();
    formaVerdeDerecha();
    formaRojaIzquierda();
    formaAzulIzquierda();
    formaAmarillaIzquierda();
  }

  void formaExteriorRoja() {
    fill(paleta.darColorAzul());
    noStroke();
    if (mouseX <=600 && mouseY>500) {
      interaccion.mover = true;
    }
    if (interaccion.mover && !interaccion.seMovio) {
      fill(paleta.darColorRojo());
    }
    funcionReutilizable(580, 510, 200);
    //forma.draw(580, 510, 200);
  }

  void dibujarFormaExteriorAzul() {
    fill(paleta.darColorRojo());
    if (mouseX<=600 && mouseY>510) {
      interaccion.mover = true;
    }
    if (interaccion.mover && !interaccion.seMovio) {
      fill(paleta.darColorAzul());
    }
    funcionReutilizable(580, 510, 150);
    // forma.draw(580, 510, 150);
  }

  void formaInteriorAmarilla() {
    fill(paleta.darColorVerde());
    if (mouseX<=600 && mouseY>510) {
      interaccion.mover = true;
    }
    if (interaccion.mover && !interaccion.seMovio) {
      fill(paleta.darColorAmarillo());
    }
    funcionReutilizable(580, 510, 100);
    //forma.draw(580, 510, 100);
  }

  void formaAzulIzquierda() { 

    fill(paleta.darColorRojo());
    if (mouseX>10 && mouseY<=300) {
      interaccion.movioFiguraIzquierda = true;
    }
    if (interaccion.movioFiguraIzquierda && !interaccion.seMovioFiguraIzquierda) {
      fill(paleta.darColorAzul());
    }
    funcionReutilizable(10, 300, 100);
  }

  void formaRojaIzquierda() {
    fill(paleta.darColorAzul());
    if (mouseX>=10 && mouseY<=300) {
      interaccion.movioFiguraIzquierda = true;
    }
    if (interaccion.movioFiguraIzquierda && !interaccion.seMovioFiguraIzquierda) {
      fill(paleta.darColorRojo());
    }
    funcionReutilizable(10, 300, 150);
  }

  void formaAmarillaIzquierda() {
    fill(paleta.darColorVerde());
    if (mouseX>=10 && mouseY<=300) {
      interaccion.movioFiguraIzquierda = true;
    }
    if (interaccion.movioFiguraIzquierda && !interaccion.seMovioFiguraIzquierda) {
      fill(paleta.darColorAmarillo());
    }
    funcionReutilizable(10, 300, 50);
  }

  void dibujarFormaAzulDerecha() {
    fill(paleta.darColorVerde());
    if (mouseX<=600 && mouseY>=200) {
      interaccion. moverFiguraDerecha = true;
    }
    if (interaccion. moverFiguraDerecha && !interaccion.movioFiguraDerecha) {
      fill(paleta.darColorAzul());
    }
    funcionReutilizable(600, 200, 150);
  }

  void formaVerdeDerecha() {
    fill(paleta.darColorAmarillo());
    if (mouseX<=600 && mouseY>=200) {
      interaccion. moverFiguraDerecha = true;
    }
    if (interaccion. moverFiguraDerecha && !interaccion.movioFiguraDerecha) {
      fill(paleta.darColorVerde());
    }
    funcionReutilizable(600, 200, 100);
  }






  void dibujarManchas() {

    for ( Mancha c : gmanchas) {
      c.dibujar(1.5);
      c.mover();
      c.rebote();
    }

    for (Mancha c : mmanchas) {
      c.dibujar(1);
      c.mover();
      c.rebote();
    }
  }
  //---- ME PERMITE LLAMARLA LAS VECES QUE LA NECESITO, REUTILIZANDO SIEMPRE EL MISMO PATRON (EN ESTE CASO, DIBUJAR LA FORMA).
  void funcionReutilizable(float posX, float posY, float tam) {
    forma.draw(posX, posY, tam);
  }
}
