class Mancha {

  PImage mancha;
  PImage mascara;
  float posX, posY, tam;

  Mancha() {
    mancha = loadImage("medianaRecurso18.png");
    posX = -290;
    posY = -300;
    tam = 150;
  }
  void draw() {
    mascara = loadImage("mascara.png" );
    mascara.filter( INVERT );
    mancha = createImage( 250, 70, RGB );
    mancha.filter( INVERT );
    mancha.mask( mascara );
  }
}
