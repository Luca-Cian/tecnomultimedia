

import processing.sound.*;
import fisica.*;
FWorld mundo;
Juego juego;

SoundFile choque;
SoundFile perdio;
SoundFile vidapw;
SoundFile tirospw;
SoundFile ost;
SoundFile danio;
SoundFile explosion;
SoundFile atraerpw;

PImage fondo;
PImage bala0, bala1, bala2;
PImage protectorNormal, protectorPW;
PImage pwvida, pwtiros, pwprotector;
PImage xd;

PImage pj1, pj2, pj3;

void setup() {

  size(600, 1000);

  Fisica.init(this);

  mundo = new FWorld(0, 0, width, 10000);
  mundo.setEdges(-1000 , 0 , 1000 , height );

  mundo.setGravity(0, 1000);

  juego= new Juego();
  

  bala0 = loadImage("DisparoJefe0.png");
  bala1 = loadImage("DisparoPj0.png");
  bala2 = loadImage("DisparoJefe2.png");    
  protectorNormal = loadImage("Protector0.png");
  fondo = loadImage("FondoSprite.jpg");  
  pwvida = loadImage("PwVida.png");  
  pwtiros = loadImage("PwDisparo.png");    
  pj1 = loadImage("Pj.png"); 
  pj2 = loadImage("Pj2.png"); 
  pj3 = loadImage("Pj3.png");   
  pwprotector = loadImage("PwProtector.png");  
  protectorPW = loadImage("Protector2.png");   
  
  choque = new SoundFile (this, "choque.wav");
  perdio = new SoundFile (this, "perdio.wav");  
  tirospw = new SoundFile (this, "tirospw.wav");  
  vidapw = new SoundFile (this, "vidapw.wav");
  ost = new SoundFile (this, "ost.wav");  
  danio = new SoundFile (this, "danio.wav");  
  explosion = new SoundFile (this, "explosion.mp3");  
  atraerpw = new SoundFile (this, "atraer.wav"); 
  
  ost.amp(0.2);
  
}

void draw() {
  background(fondo);
  //mundo.drawDebug();
  juego.dibujar();
}


void mouseClicked() {
  juego.cambiarEstado();
}




String conseguirNombre(FBody cuerpo)
{
  String nombre = "nada";

  if (cuerpo != null)
  {
    nombre = cuerpo.getName();

    if (nombre == null)
    {
      nombre = "nada";
    }
  }
  return nombre;
}

void contactStarted(FContact contacto) {

  FBody cuerpo1 = contacto.getBody1();
  FBody cuerpo2 = contacto.getBody2();

  String nombre1 = conseguirNombre(cuerpo1);
  String nombre2 = conseguirNombre(cuerpo2);

  //println(nombre1);

  if (nombre1 == "laser" && nombre2 == "proyectil") {
    juego.quitarCirculo((FCircle)cuerpo2);
    //explosion.play();
  }
  if (nombre2 == "laser" && nombre1 == "proyectil") {
    juego.quitarCirculo((FCircle)cuerpo1);
    //explosion.play();
  }

  if (nombre1 == "laser" && nombre2 == "jefecito") {
    juego.vidasJefe();
    danio.play();    
  }
  if (nombre2 == "laser" && nombre1 == "jefecito") {
    juego.vidasJefe();
    danio.play();    
  }

  if (nombre1 == "laser" && nombre2 == "jefecito") mundo.remove(cuerpo1);
  if (nombre2 == "laser" && nombre1 == "jefecito") mundo.remove(cuerpo2);

  if (nombre1 == "maso" && nombre2 == "proyectil") {
   juego.perder(juego.pj); 
   choque.play(); 
   mundo.remove(cuerpo2);
  };
  if (nombre2 == "maso" && nombre1 == "proyectil") {
   juego.perder(juego.pj); 
   choque.play(); 
   mundo.remove(cuerpo1);
  };
  
  if (nombre1 == "maso" && nombre2 == "pw") {
    juego.power();
    mundo.remove((FBody)cuerpo2);
  }

  if (nombre1 == "maso" && nombre2 == "pw") {
    juego.power();
    mundo.remove((FBody)cuerpo2);
  }
  if (nombre2 == "maso" && nombre1 == "pw") { 
    juego.power();
    mundo.remove((FBody)cuerpo1);
  }
  
  if (juego.pw.atraer){
  if (nombre1 == "protector" && nombre2 == "proyectil") juego.quitarCirculo((FCircle)cuerpo2);
  if (nombre2 == "protector" && nombre1 == "proyectil")   juego.quitarCirculo((FCircle)cuerpo1);  }
  
  if (nombre1 == "laser" && nombre2 == "protector") mundo.remove(cuerpo1);
  if (nombre2 == "laser" && nombre1 == "protector") mundo.remove(cuerpo2);  
  

  //if (nombre1 == "laser" && nombre2 == "jefecito") juego.vidasJefe((FPoly)cuerpo2);
  //if (nombre2 == "laser" && nombre1 == "jefecito") juego.vidasJefe((FPoly)cuerpo2);
  
  

  float y= contacto.getY();

  if (y>994 && nombre1 =="proyectil") mundo.remove(cuerpo1);
  if (y>994 && nombre2 =="proyectil") mundo.remove(cuerpo2); 

  if (y<10 && nombre1 =="laser") mundo.remove(cuerpo1);
  if (y<10 && nombre2 =="laser") mundo.remove(cuerpo2); 

  if (y>995 && nombre1 =="laser") mundo.remove(cuerpo1);
  if (y>995 && nombre2 =="laser") mundo.remove(cuerpo2);
}
