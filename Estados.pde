class estados {

  botones b;  


  PFont courier;
  String [] texto;
  PImage [] fondo = new PImage[9];

  estados() {

    courier = loadFont ("CourierNewPS-BoldMT-18.vlw");
    texto= loadStrings("texto.txt");
    for (int i = 0; i<9; i++) {
      fondo[i] = loadImage("fondo"+nf(i)+".jpg");
    }
    b = new botones();
  }

  void inicio() {
    image(fondo[0], 0, 0);
  }


  void mapa() {
    image(fondo[1], 0, 0);
    textSize(15);
    fill (20);
    rect (0, 400, height, width); 
    textFont (courier);
    fill(255);
    text(texto [0], 15, 420);
    text(texto [1], 15, 440);
    text(texto [2], 15, 460);
    text(texto [3], 15, 480);
    text(texto [4], 15, 490);
  }
  void globo() {
    image(fondo[6], 0, 0);
    textSize(15);
    fill (0);
    rect (0, 380, height, width); 
    textFont (courier);
    fill(255);
    text(texto [5], 8, 400);
    text(texto [6], 8, 420);
    text(texto [7], 8, 440);
    text(texto [8], 8, 460);
    text(texto [9], 8, 480);
  }

  void muerte1() {
    image(fondo[2], 0, 0);
    //textSize(30);
    //stroke (255, 0, 0);
    //line (0, 140, 400, 140);
    fill (0);
    rect (0, 360, height, width); 
    textFont (courier);
    fill(255);
    text(texto [11], 12, 380);
    text(texto [12], 12, 400);
    text(texto [13], 12, 420);
    text(texto [14], 12, 440);
    text(texto [15], 12, 460);
    text(texto [16], 12, 480);
    b.boton2(width-200, height-40, 45, 30, "Si");
    b.boton2(width-100, height-40, 45, 30, "No");
  }
  void cielo() {
    image(fondo[3], 0, 0);
    textSize(30);
    fill (0, 150);
    rect (0, 150, 400, 180); 
    textFont (courier);
    fill(255);
    text(texto [17], 9, 180);
    text(texto [18], 9, 200);
    text(texto [19], 9, 220);
    text(texto [20], 9, 240);
    text(texto [21], 9, 260);
    text(texto [22], 9, 280);

    b.boton2(140, 285, 40, 30, "Si");
    b.boton2(240, 285, 40, 30, "No");
  }
  void muerte2 () {

    textSize(15);
    fill (0);
    rect (0, 360, height, width); 
    textFont (courier);
    fill(255);
    text(texto [23], 12, 200);
    text(texto [24], 12, 220);
    text(texto [25], 12, 240);
    text(texto [26], 12, 280);
    text(texto [27], 12, 300);
  }
  void barco() {
    image(fondo[5], 0, 0);
    textSize(30);
    fill (0);
    rect (0, 380, height, width); 
    textFont (courier);
    fill(255);
    text(texto [28], 12, 400);
    text(texto [29], 12, 420);
    text(texto [30], 12, 440);
    text(texto [31], 12, 460);
    text(texto [32], 12, 480);
  }

  void amanecer() {
    image(fondo[6], 0, 0);
    textSize(30);
    fill (20);
    rect (0, 390, height, width); 
    textFont (courier);
    fill(255);
    text(texto [33], 15, 410);
    text(texto [34], 15, 430);
    text(texto [35], 15, 450);
    text(texto [36], 15, 470);
    text(texto [37], 15, 490);
  }
  void amanecer2() {
    image(fondo[7], 0, 0);
    textSize(30);
    fill (20);
    rect (0, 390, height, width); 
    textFont (courier);
    fill(255);
    text(texto [38], 15, 410);
    text(texto [39], 15, 430);
    text(texto [40], 15, 450);
    text(texto [41], 15, 470);
    text(texto [42], 15, 490);
  }
  void tumbas() {
    image(fondo[8], 0, 0);
    textSize(30);
    fill (20);
    rect (0, 390, height, width); 
    textFont (courier);
    fill(255);
    text(texto [43], 15, 410);
    text(texto [44], 15, 430);
    text(texto [45], 15, 450);
    text(texto [46], 15, 470);
    text(texto [47], 15, 490);
    text(texto [48], 15, 495);
  }
  void noglobo() {
   
    textSize(30);
    textFont (courier);
    fill(255);
    text(texto [59], 16, 220);
    text(texto [60], 12, 240);
 
    text(texto [61], 12, 280);
    text(texto [62], 12, 300);
  }
  void fin() {
    textSize(30);
    fill (0);
    rect (0, 400, height, width); 
    textFont (courier);
    fill(255);
    text(texto [49], 12, 800-frameCount);
    text(texto [50], 12, 830-frameCount);
    text(texto [51], 12, 850-frameCount);
    text(texto [52], 12, 920-frameCount);
    text(texto [53], 12, 990-frameCount);
    text(texto [54], 12, 1010-frameCount);
    text(texto [55], 12, 1060-frameCount);
    text(texto [56], 12, 1080-frameCount);
    text(texto [57], 12, 1130-frameCount);
    text(texto [58], 12, 1150-frameCount);
  }
}
