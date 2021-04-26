class Mancha {

  // -------- ATRIBUTOS
  float x, y;
  float angulo, seg, posicion;
  String estado = "activo";
  PImage formas[];
  int cantidad = 14, tipo;
  Dibujar dibujar;

  Mancha(float x, float y, int tipo, float angulo) {
    this.x = x;
    this.y = y;
    this.tipo = tipo;
    this.angulo = angulo;
    formas = new PImage [cantidad];

    // -------- CARGA DE IMÁGENES 
    for (int i = 0; i < cantidad; i++) {
      String nombre = "forma" + nf(i, 2) + ".png";
      if ( tipo == i ) {
        formas[i] = loadImage( nombre );
        formas[i].filter( INVERT );
        formas[i].mask( formas[i] );
      }
    }
  }

  void dibujar(float escala) {
    pushMatrix();
    imageMode(CENTER);
    scale( escala );
    image(formas[tipo], x, y);
    tint ( #E74C3C);
    popMatrix();
  }

  void mover() {
    float vel = 2.5;
    float dx = vel*cos(radians(angulo));
    float dy = vel*sin(radians(angulo));
    x = constrain(x, 0, width);
    y = constrain(y, 0, height);
    if (estado.equals("activo")) {
      angulo += random(-7, 7);
      x += dx;
      y += dy;
      seg = 0;
    } 
    if (dist(mouseX, mouseY, x, y) < 100) {
      estado = "inactivo";
    }
    if (estado.equals("inactivo")) {
      seg ++;
      if (seg > 300) {
        estado = "activo";
      }
    }
  }

  void rebote() {
    if (x >= width - 50) {
      angulo = 180;
    }
    if ( x <= 50) {
      angulo = 0;
    }
    if (y>= height - 50) {
      angulo = 270;
    }
    if (y <= 50) {
      angulo =90;
    }
  }
}
