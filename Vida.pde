
class Vida {

  float w; 

  Vida () {

    w = 0;
  }

  void dibujar () {

    noStroke ();
    fill (#39EA5A);
    rect(15, 15, w, 25, 50);

    noFill ();
    stroke (#031E21);
    rect(15, 15, 140, 25, 50);
  }

  void progreso () {
    
    if (frameCount == 0) {
      w = 0;
    
    }
    if (frameCount == 240) {
      w = 28;
    }

    if (frameCount == 480) {
      w = 56;
    }
    if (frameCount == 720) {
      w = 84;
    }
    if (frameCount == 960) {
      w = 112;
    }

    if (frameCount == 1190) {
      w = 140;
    }
  }
}
