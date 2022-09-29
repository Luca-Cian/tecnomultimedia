
class Juego {
  String estado="inicio";
  PImage inicio, fondomenu, texto1, texto2, titulo, instrucciones, perdiste,ganaste,explopj;
  Personaje pj;
  Protector pt;
  powerUp pw;

  Jefecito jefe;
  int vidas=0;
  boolean cambiar=false;
  boolean perder=false;
  boolean ganar=false;

  Juego() {
    inicio = loadImage("Inicio2.png");
    fondomenu = loadImage("fondomenu.jpg");
    texto1 = loadImage("clickaqui.png");
    texto2 = loadImage("clickaqui2.png");
    titulo = loadImage("galaxydestroyer.png");
    instrucciones = loadImage("instrucciones.png");
    perdiste = loadImage("perdiste.png");
    ganaste = loadImage("ganaste.png");
    explopj = loadImage("explosionNave.png");

    textMode(CENTER);
    textSize(25);

    pw = new powerUp();

    pj = new Personaje();
    pt= new Protector();


    jefe = new Jefecito();
  }

  void dibujar() {
    //println("estado:"+estado);
    cambiarEstados();
    cambiar=false;

    //println(pw.rapidfire);

    pt.dibujar(estado, pw);

    pw.t=millis()/1000;
    pw.diferencia(pj,pt);
    //println(pw.chance);
    //println(pw.tipopw);
    mundo.draw();

    if (estado.equals("inicio")) {
      image(inicio, 0, 0);
      image(titulo, 0, 0);
      if (mouseY > 565 && mouseY < 658 && mouseX > 190 && mouseX < 408) {
        image(texto2, 0, 0);
      } else {
        image(texto1, 0, 0);
      }

      pj.maso.attachImage(pj1);
      
    } else if (estado.equals("moverprotector")) {
      image(instrucciones, 0, 0);
    } else if (estado.equals("juego")) {


      mundo.step();
      pj.posicionPj();
      pt.atraer();

      jefe.estadosJefe(vidas);
      jefe.moverJefecito();
      jefe.dibujarJefecito();
      //text(pj.vidas, width/2, height/2);
      //text(frameCount, width/3, height/2);


      if (frameCount%300==0) {
        pw.aparecer();
        pw.chance();
      }
    } else if (estado.equals("perdiste")) {
      pj.maso.attachImage(explopj);
      image(perdiste, 0, 0);
      
    } else if (estado.equals("ganaste")) {
      image(jefe.explojefe, jefe.posx-115, 150);
      image(ganaste, 0, 0);
    }
  }


  void vidasJefe() {
    vidas++;
    if (vidas>150) {
      ganar=true;
    }
  }

  void perder( Personaje pj_) {
    pj.vida();
    if (pj_.muerto) {
      perder= true;
    } else {
      perder= false;
    }
  }
  void cambiarEstados() {
    if (estado.equals("inicio") && cambiar) {
      estado="moverprotector";
    } else if (estado.equals("moverprotector") && keyPressed) {
      estado="juego";
      ost.play();
    } else if (estado.equals("juego") && perder) {
      estado="perdiste";
      ost.stop();
      perdio.play();
    } else if (estado.equals("juego") && ganar) {
      estado="ganaste";
      ost.stop();
    } else if (estado.equals("perdiste") && cambiar) {
      estado="inicio";
      reset();
    } else if (estado.equals("ganaste") && cambiar) {
      estado="inicio";
      reset();
    }
  }

  void cambiarEstado() {
    cambiar=true;
  }


  void quitarCirculo(FCircle circulo)
  {
    mundo.remove(circulo);
  }
  void reset() {
    vidas=0;
    pj.vidas=3;
    pj.muerto=false;
    perder=false;
    ganar=false;
    estado="inicio";
  }

  void power() {
    pw.activarPoder(pj,pt);
  }
}//clase-------------------------------------------------------------------------------------------------------
