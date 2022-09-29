class Jefecito {


  PImage explojefe;
  FPoly e; 
  FMouseJoint mov;
  FMouseJoint mov2;//joint para mover al jefe

  int xeb, yeb;
  float posx, posy;
  int vel;
  boolean vamo=true;
  boolean jefevivo=true;
  String patronAtaque="ataque1";
  int sizebala=20;

  float proyectilDesity= 10;

  PImage estado1, estado2, estado3;
  PImage fuego;

  boolean reset =false;

  Jefecito() {
    explojefe = loadImage("explosionjefe.png");

    estado1 = loadImage("JefeSprite0.png");
    estado2 = loadImage("JefeSprite1.png");
    estado3 = loadImage("JefeSprite2.png");
    fuego = loadImage("Fueguito.png");

    vel=3;

    e = new FPoly();

    xeb = int(random(100, 500));
    //yeb = 80;

    posx=xeb;
    posy=100;

    e.vertex(0+100, 150+100);
    e.vertex(120+100, 0+100);
    e.vertex(-120+100, 0+100);
    e.setGrabbable(false);
    e.setDrawable(true);
    e.setName("jefecito");
    e.setNoFill();
    e.setNoStroke();

    mundo.add(e);

    mov = new FMouseJoint(e, 90, 150);
    mov.setCollideConnected(false);
    mov.setFrequency(1000);
    mundo.add(mov);
    mov2 = new FMouseJoint(e, 110, 150);
    mov2.setCollideConnected(false);
    mov2.setFrequency(1000);
    mundo.add(mov2);
  }

  void dibujarJefecito() {
    proyectiles(posx, posy);
  }

  void proyectiles(float posx_, float posy_) {

    if (jefevivo) {
      if (patronAtaque.equals("ataque1")) {
        if (frameCount % 35 == 0 && frameCount < 10000)
        {
          FCircle circulo = new FCircle(sizebala);
          circulo.setPosition(posx_, posy_+200);
          circulo.setName("proyectil");
          circulo.setDensity(proyectilDesity);
          circulo.setFill(230, 100, 150);
          circulo.setVelocity(0, 700);
          circulo.setRestitution(1.2);
          circulo.attachImage(bala0);
          mundo.add(circulo);
        }
      } else if (patronAtaque.equals("ataque2")) {
        if (frameCount % 25 == 0 && frameCount < 10000)
        {
          FCircle circulo = new FCircle(sizebala);
          circulo.setPosition(posx_, posy_+200);
          circulo.setName("proyectil");
          circulo.setDensity(proyectilDesity);
          circulo.setFill(230, 100, 150);
          circulo.setVelocity(0, 500);
          circulo.setFill(100);
          circulo.attachImage(bala0);          
          mundo.add(circulo);


          FCircle circulo2 = new FCircle(sizebala);
          circulo2.setPosition(posx_+100, posy_+200);
          circulo2.setName("proyectil");
          circulo2.setDensity(proyectilDesity);
          circulo2.setFill(230, 100, 150);
          circulo2.setVelocity(300, 500);
          circulo2.attachImage(bala0);          
          mundo.add(circulo2);


          FCircle circulo3 = new FCircle(sizebala);
          circulo3.setPosition(posx_-100, posy_+200);
          circulo3.setName("proyectil");
          circulo3.setDensity(proyectilDesity);
          circulo3.setFill(230, 100, 150);
          circulo3.setVelocity(-300, 500);
          circulo3.attachImage(bala0);          
          mundo.add(circulo3);
        }
      } else if (patronAtaque.equals("ataque3")) {
        vel=5;
        if (frameCount % 20 == 0 && frameCount < 10000)
        {
          FCircle circulo = new FCircle(sizebala+40);
          circulo.setPosition(posx_, posy_+200);
          circulo.setName("proyectil");
          circulo.setDensity(proyectilDesity);
          circulo.setFill(230, 100, 150);
          circulo.setVelocity(0, 650);
          circulo.setFill(100);
          circulo.attachImage(bala2);         
          mundo.add(circulo);


          FCircle circulo2 = new FCircle(sizebala);
          circulo2.setPosition(posx_+100, posy_+200);
          circulo2.setName("proyectil");
          circulo2.setDensity(proyectilDesity);
          circulo2.setFill(230, 100, 150);
          circulo2.setVelocity(300, 500);
          circulo2.attachImage(bala0);          
          mundo.add(circulo2);



          FCircle circulo3 = new FCircle(sizebala);
          circulo3.setPosition(posx_-100, posy_+200);
          circulo3.setName("proyectil");
          circulo3.setDensity(proyectilDesity);
          circulo3.setFill(230, 100, 150);
          circulo3.setVelocity(-300, 500);
          circulo3.attachImage(bala0);              
          mundo.add(circulo3);
        }
      } else if (!jefevivo) {
        mundo.remove(e);
        mundo.remove(mov);
        mundo.remove(mov2);
        
      }
    }
  }


  void moverJefecito() {
    
    if (posx>width-120 ) {
      vamo=false;
    } else if (posx<120) {
      vamo=true;
    }
    if (vamo) posx=posx+vel;
    if (!vamo) posx=posx-vel;

    mov.setTarget(posx-20, 200);
    mov2.setTarget(posx+20, 200);
  }

  void estadosJefe(float vida) {

    //BARRA DE VIDAAAA-----------------------------------------------------
    float vidas=map(vida, 0, 150, 0, 300);
    //FONDO DE LA BARRA E VIDA
    fill(#A2A1A1);
    rect(posx-150, 70, 300, 10);
    //BARRA DE VIDA DIBUJADA
    fill(#FF8A1C);
    rect(posx-150, 70, 300-vidas, 10);

    //CAMBIOS DE ESTADO
    image(fuego, posx-115, 2);
    if (vida<50) { 
      patronAtaque="ataque1";
      image(estado1, posx-115, 150);
    } else if (vida>50 && vida<100) {
      patronAtaque="ataque2";
      image(estado2, posx-115, 150);
    } else if (vida>100) {
      patronAtaque="ataque3";
      image(estado2, posx-115, 150);
      image(estado3, posx-115, 150);
    }
  }

  void morite() {
    jefevivo=false;
  }
}
