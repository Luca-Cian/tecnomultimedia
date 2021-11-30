
class Globo {
  PImage globo;
  int px, py, tam;

  Globo (int px_, int py_, int tam_) {
    px = px_;
    py = py_;
    tam = tam_;
    globo = loadImage("globo.png");
  }
  void dibujar() {

    image(globo, px, py, tam, tam*2);

  }
  
  void reiniciar () {
   px = width/2-50;
   py = height- 130;
   tam = 75;
  }
  
  
  void moverDerecha() {
    if (px<width-tam/2 && px < 350) {
      px += 6;
    }
  }

  void moverIzquierda() {
    if (px>tam/2 && px > 0) {
      px -= 6;
    }
  }
  void moverArriba() {
    if (px<width-tam/2 && py > 0) {
      py -= 6;
    }
  }
  void moverAbajo() {
    if (px<width-tam/2 && py < 390) {
      py += 6;
    }
  }
} 
