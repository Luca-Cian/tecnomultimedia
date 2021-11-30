
class Pajaro {

  // PROPIEDADES > variables
  int p;
  int cant = 1;
  PImage [] pajaro = new PImage[2];
  // PImage pajaro;
  float x, y;
  float vel;
  float tam;
  float ang;
  boolean activo;

  // CONSTRUCTOR > el "setup de la clase"

  Pajaro (float vel_, int p) {

    // inicializar las propiedades/variables

    tam = 60;
    x = 0;
    y = random (600);
    activo = true;
    vel = vel_;
    // vel = random( 1, 4 );
    for (int i=0; i<2; i++) {
      pajaro[i] = loadImage("pajaro"+nf(i)+".png");
    }
    // pajaro = loadImage ("pajaro.png");
  }  


  // METODOS > funciones

  void dibujar(int p_) {
    p = p_;
    
    image(pajaro[p], x, y, tam, tam);

    if (p == 0 ) {
      cant = 0;
    } else {
      cant = 1;
    }


    //  image (pajaro, x, y, tam, tam);
    reciclar ();
  }

  void moverPajaro() {
    x += 4* vel;
    y -= 1;
  }

  void reciclar() {
    if ( x >= width) {
      x = -100;
      y = random( height );
    }
  }
}
