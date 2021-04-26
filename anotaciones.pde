//-----ESTE ES EL CODIGO DEL PROFESOR. FUNCIONA BIEN, PERO HAY QUE VER COMO LO ACOPLO A MI PROBLEMA

/*VelocidadYDireccion velocidadYDireccion;
 boolean seMoviaEnElFrameAnterior;
 
 boolean arriba;
 boolean abajo;
 boolean derecha;
 boolean izquierda;
 
 Interaccion() {
 velocidadYDireccion = new VelocidadYDireccion();
 }
 
 void actualizar() {
 velocidadYDireccion.calcularTodo(mouseX, mouseY);
 
 //----- que pasa con el mouse en este frame
 boolean seMueveElmouseEnEsteFrame = false;
 float sensibilidad = 35;
 if (velocidadYDireccion.velocidad()>sensibilidad && velocidadYDireccion.velocidad()<150) {
 seMueveElmouseEnEsteFrame = true;
 }
 arriba = false;
 abajo = false;
 derecha = false;
 izquierda = false;
 
 if (seMueveElmouseEnEsteFrame &&
 !seMoviaEnElFrameAnterior) {
 arriba = velocidadYDireccion.direccionY()<-sensibilidad?true:false;
 abajo = velocidadYDireccion.direccionY()>sensibilidad?true:false;
 derecha = velocidadYDireccion.direccionX()>sensibilidad?true:false;
 izquierda = velocidadYDireccion.direccionX()<-sensibilidad?true:false;
 }
 //---- dejo listo todo para el siguiente frame
 seMoviaEnElFrameAnterior = seMueveElmouseEnEsteFrame;
 }
 
 } */

/* ---- CODIGO QUE EN ALGUN MOMENTO SIRVIO
 //---CLASE DIBUJAR
 
 void formaExteriorRoja() {
 for (int i=0; i<360; i+=10) {
 float angulo = radians(i+frameCount);
 float distancia = 100;
 float posX = distancia*cos(angulo);
 float posY = distancia*sin(angulo);
 fill(paleta.darColorAzul());
 
 if (mouseX <=600 && mouseY>500) {
 interaccion.mover = true;
 }
 if (interaccion.mover && !interaccion.seMovio) {
 fill(paleta.darColorRojo());
 }
 forma.draw(posX + 250, posY + 250, 50);
 } 
 
 //-----CLASE INTERACCION
 class Interaccion {
 boolean mover;
 boolean seMovio;
 boolean abajo;
 Paleta paleta;
 
 Interaccion() {
 seMovio= false;
 mover = false;
 abajo = false;
 }
 }
 
 //----CODIGO QUE ME SIRVIO, PERO MODIFICO POR LAS IMAGENES
  void dibujarFormaExteriorAzul() {
    translate(1, 300);
    fill(paleta.darColorRojo());
    ellipse(600, 550, 50, 50);
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
    translate(300, 300);
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
 */
