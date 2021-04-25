class Interaccion {
  VelocidadYDireccion velocidadYDireccion;
  boolean movGrande;
  boolean movPeque;
  float tiempoGrande;
  float tiempoPeque;
  float velocidad = 40;

  Interaccion() {
    velocidadYDireccion = new   VelocidadYDireccion();
  }

  void actualizar() {
    velocidadYDireccion.calcularTodo(mouseX, mouseY);
    movGrande = false;
    movPeque = false;
    tiempoGrande--;
    tiempoPeque--;
    tiempoGrande = constrain(tiempoGrande, 0, 90);
    tiempoPeque = constrain(tiempoPeque, 0, 90);
    if (velocidadYDireccion.velocidad()>10) {
      if (velocidadYDireccion.velocidad()>velocidad) {
        tiempoGrande+=10;
        tiempoPeque-=10;
      } else {
        if (tiempoGrande<10) {
          tiempoPeque+=10;
        }
      }
    }

    if (tiempoGrande>55) {
      movGrande = true;
    } 
    if (tiempoPeque>55) {
      movPeque = true;
    }
  }
}
