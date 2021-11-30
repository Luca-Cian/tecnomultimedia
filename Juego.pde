
class Juego {


  // PROPIEDADES (variables)
  // EstadoGeneralDelJuego = menu, jugar, ganar, perder

  int contador; // contador de colisiones
  // float c;
  color c; 
  String estado; // en qué parte del juego estamos
  Vida vida; 
  Fondo fondo; 
  Globo globo; 
  Pajaro [] pajaros; 
  Pajaro [] pajaros2;
  int cant; // cantidad de pajaros
  int nivel; 
  int pantalla; // carga el número de imagen de fondo
  int RESET = 0;
  int frameC = 1200;  
  int f = frameCount;
    
  aventura a;
    
  // CONSTRUCTOR (setup del objeto)
  Juego (int cant_) {

    // inicializar los objetos: 
    estado = "intro";
    cant = cant_;
    globo = new Globo(width/2-50, height- 130, 70);
    pajaros = new Pajaro[cant];
    pajaros2 = new Pajaro[cant];
    fondo = new Fondo();
    vida = new Vida ();

    //inicializo los objetos de los arreglos
    for (int i=0; i<cant; i++) {
      pajaros[i] = new Pajaro (random( 1, 4 ), 0);
      pajaros2[i] = new Pajaro (random( 1, 2), 1 );
    }
    

  }

  // METODOS (funciones) 
  void dibujarJuego() {
   
    fondo.dibujar(pantalla); 

    if (estado.equals("intro")) {
      pantalla = 0;
    }
    if (estado.equals("ENTER")) {
      pantalla = 1;
      nivel = 1;
    }

    if (estado.equals("jugando")) {
      f = 0;
      colision();
      globo.dibujar();
      vida.dibujar ();
      vida.progreso ();

      for (int i=0; i<cant; i++) {
        pajaros[i].dibujar(0);
        pajaros[i].moverPajaro();
        pajaros2[i].dibujar(1);
        pajaros2[i].moverPajaro();
      }

      fill(c);
      textSize(30);
      text(contador, width-50, 50);
    }
    if (contador>=6) {
      estado = "PERDIO";
    } else if ( estado.equals("jugando") ) {
    }

    if (estado.equals("PERDIO")) {
      pantalla = 4;

    }

    if (estado.equals("GANASTE")) {
    pantalla = 5;
    }
    if (frameCount >= frameC && estado.equals("jugando")) {
      estado = "GANASTE";
    }



  }

  void colision() {
    for (int i=0; i<cant; i++) {
      boolean chocan = dist(pajaros[i].x, pajaros[i].y, globo.px, globo.py) < globo.tam/2+globo.tam/2;
      boolean chocan2 = dist(pajaros2[i].x, pajaros2[i].y, globo.px, globo.py) < globo.tam/2+globo.tam/2;

      if (contador >= 4) {
        c =  color (#F01628);
      } else {
        c = 0;
      }
      
      if (chocan  && pajaros[i].activo) {
        contador++;
        pajaros[i].activo = false;
        piew.play();
      }
      if (chocan2  && pajaros2[i].activo) {
        contador++;
        pajaros2[i].activo = false;
        piew.play();
      }

      if (chocan  && pajaros[i].activo) {
        contador++;
        pajaros[i].activo = false;

      }
      if (chocan2  && pajaros2[i].activo) {
        contador++;
        pajaros2[i].activo = false;

      }
    }
  }

  void moverGlobo(int tecla_) {
    int tecla = tecla_;
    if (tecla==RIGHT) {
      globo.moverDerecha();
    }

    if (tecla==LEFT) {
      globo.moverIzquierda();
    }
    if (tecla==UP) {
      globo.moverArriba();
    }
    if (tecla==DOWN) {
      globo.moverAbajo();
    }
  }

  void instrucciones() {
    if (mouseX>width-200 && mouseY >height-50 && estado.equals("intro")) {
      estado = "ENTER";
    }
  }


  void reciclar() {
    for ( int i = 0; i<cant; i++ ) {
      pajaros[i].reciclar();
      pajaros2[i].reciclar();
    }
  }
  void reiniciar () {
      estado = "jugando";
      pantalla = 2;
      contador = 0;
      frameCount = 0;
      nivel = 1;
      globo.reiniciar ();
      vida.progreso ();

      for (int i=0; i<cant; i++) {
        pajaros[i] = new Pajaro (random( 1, 4 ), 0);
        pajaros2[i] = new Pajaro (random( 1, 2 ), 1);
      }
  }
  
}
