class aventura {

  String estado;    

  botones b;
  estados e;
  Juego juego;

  aventura() {
    estado = "inicio";
    b = new botones();
    e = new estados();
    juego = new Juego(3);
  }

  void draw() {

    background(0);     

    if (estado.equals("inicio")) {
      image(e.fondo[0], 0, 0);
      b.boton(68, 400, 260, 50, "Presiona para comenzar");
    } else if (estado.equals("mapa")) {
      e.mapa();
    } else if (estado.equals("globo")) {
      e.globo();
    } else if (estado.equals("muerte1")) {
      e.muerte1();
    } else if (estado.equals("minijuego")) {
      juego.dibujarJuego();
      if (keyPressed) {
        juego.moverGlobo(keyCode);
      }
    } else if (estado.equals("cielo")) {
      e.cielo();
    } else if (estado.equals("barco")) {
      e.barco();
    } else if (estado.equals("muerte2")) {
      e.muerte2();
    } else if (estado.equals("amanecer")) {
      e.amanecer();
    } else if (estado.equals("amanecer2")) {
      e.amanecer2();
    } else if (estado.equals("tumbas")) {
      e.tumbas();
    } else if (estado.equals("noglobo")) {
      e.noglobo();
    } else if (estado.equals("fin")) {
      e.fin();
      frameCount += 0;
    }


    //cuando el estado de la pestaña "Juego" es "GANASTE" la pantalla pasa a ser cielo y seguís con la aventura

    if (juego.estado.equals("GANASTE")) {
      estado = "cielo";
    }

  }




  void mousePressed() {
    if (b.botonPressed(mouseX, mouseY, 68, 400, 260, 50) && estado.equals("inicio")) { // boton izquierdo
      estado = "mapa";
      juego.reiniciar ();
    } else if (b.botonPressed(mouseX, mouseY, 0, 280, height, width) && estado.equals("mapa")) { // boton derecho
      estado = "globo";
    } else if (b.botonPressed(mouseX, mouseY, 0, 280, height, width) && estado.equals("globo")) { // boton inferior derecho
      estado = "muerte1";
    } else if (b.botonPressed(mouseX, mouseY, width-200, height-40, 45, 30) && estado.equals("muerte1")) { // boton inferior derecho
      estado = "minijuego";
    } else if (b.botonPressed(mouseX, mouseY,width-100, height-40, 45, 30) && estado.equals("muerte1")) { // boton inferior derecho
      estado = "noglobo";
    } else  if (b.botonPressed(mouseX, mouseY, 140, 285, 40, 30) && estado.equals("cielo")) { // boton inferior izquierdo
      juego.estado = "intro";
      estado = "barco";
    } else  if (b.botonPressed(mouseX, mouseY, 240, 285, 40, 30) && estado.equals("cielo")) { // boton inferior izquierdo
      juego.estado = "intro";
      estado = "muerte2";
    } else if (b.botonPressed(mouseX, mouseY, 0, 280, height, width) && estado.equals("barco")) { // boton inferior derecho
      estado = "amanecer";
    } else if (b.botonPressed(mouseX, mouseY, 0, 390, height, width) && estado.equals("amanecer")) { // boton derecho
      estado = "amanecer2";
    } else if (b.botonPressed(mouseX, mouseY, 0, 390, height, width) && estado.equals("amanecer2")) { // boton derecho
      estado = "tumbas";
    } else if (b.botonPressed(mouseX, mouseY, 0, 390, height, width) && estado.equals("tumbas")) { // boton derecho
      estado = "fin";
      frameCount = 200;
    }


    juego.instrucciones();
  }

  void keyPressed() {
    if (estado.equals("noglobo") || estado.equals("muerte2") && keyCode == ' ') {  
      estado = "inicio";
    }

    if (estado.equals("fin") && keyCode == ' ') {  
      estado = "inicio";
    }
    if (juego.estado.equals("PERDIO") && keyCode == ' ') {  
      estado = "inicio";
    }
  }
}
