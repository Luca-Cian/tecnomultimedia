
class Fondo {
  int numFondo;
  int py;
  int cant = 6; 
  PImage [] fondos = new PImage[cant];
  Fondo() {
    for (int i=0; i<cant; i++) {
      fondos[i] = loadImage("pantalla"+i+".png");
    }
    py = -600;
  }
  void dibujar(int numFondo_) { // dibuja según el número de imagen que reciba por parámetro
    numFondo = numFondo_;
    image(fondos[numFondo], 0, py);
    
    if (numFondo>1 && numFondo<4 ) {// moverFondo) 
      py += 2;
    } else {
      py = 0;
    }
    if (py>0) {
      py = -600;
    }
  }
}
