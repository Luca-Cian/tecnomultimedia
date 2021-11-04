class Juego {

  boolean activacionprincipal = true;
  boolean activacionjuego = false;
  boolean activacionfinal1 = false;
  boolean activacionfinal2 = false;

  Luffy l;

  Obstaculo o;

  Escenario e;

  Juego() {
    l = new Luffy(0, 0);
    e = new Escenario(0, 0);
    o = new Obstaculo(1900, 136);
  }

  void setup() {
    e.setup();
  }

  void draw() {
    background (250);
    if (activacionprincipal == true) {
      activacionjuego = false;
      e.pantallaprincipal();
    }

    if (activacionprincipal == false) {
      activacionjuego = true;
    }

    if (activacionjuego == true) {
      e.fondo();
      l.aparecer();
      o.aparecerBarco();
      o.aparecerMonstruo();      
      l.colisionfin1(o, juego); 
      l.colisionfin2(o, juego);       
      l.colisionganar(o, juego);      
    }
   if (activacionfinal1 == true){
    activacionjuego = false; 
    e.final1();
    activacionjuego = false; 
    o.x0();
}     
   if (activacionfinal2 == true){
    e.final2(); }    
   
   }

    void teclado() {
    if (activacionprincipal == true) {
      activacionprincipal = false;
    }

    if (activacionprincipal == false) {
      l.moverIzq();
      l.moverDer();
      l.moverArriba();
      l.moverAbajo();
    }
    
    if(key == ENTER && activacionfinal1 == true){
     activacionfinal1 = false; 
     activacionjuego = false;
     activacionprincipal = true;
     l.reset();
     e.reset();
     o.reset();
    }
    if(key == ENTER && activacionfinal2 == true){
     activacionfinal2 = false; 
     activacionjuego = false;
     activacionprincipal = true;
     l.reset();
     e.reset();
     o.reset();
    }    
  }
  
  void fin1 (){ 
   activacionjuego = false; 
   activacionfinal2 = false;   
   activacionfinal1 = true;
  }
  void fin2 (){ 
   activacionjuego = false; 
   activacionfinal1 = false;    
   activacionfinal2 = true;
   o.x0();
  }  
  
    void ganar(){ 
     activacionjuego = false;
     activacionprincipal = true;
     l.reset();
     e.reset();
     o.reset();
  }
  

  
  
  }



  

  
