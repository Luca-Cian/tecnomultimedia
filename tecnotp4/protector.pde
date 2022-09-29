class Protector {
  float posx, posy;
  FBox protector;
  int atraccion, atraccionb;

  powerUp pw;

  Protector() {

    pw = new powerUp();

    atraccion=0;
    atraccionb=0;

    protector = new FBox(100, 30);

    protector.setName("protector"); 
    protector.setPosition(posx, posy);
    protector.setGrabbable(true);
    protector.setRestitution(1.2);
    protector.setStatic(true);
    protector.setVelocity(0, 200);
    protector.setDrawable(true);
    protector.setPosition(300, 500);

    mundo.add(protector);
  }

  void dibujar(String estado, powerUp pw) {
    posx=protector.getX();
    posy=protector.getY();
    if (estado.equals("moverprotector")) {
      protector.setGrabbable(true);
    } else {
      protector.setGrabbable(false);
      protector.attachImage(protectorNormal);
    }
    if (pw.atraer){
      protector.attachImage(protectorPW);
    }
  }

  void atraer()
  {
    ArrayList<FBody> cuerpos = mundo.getBodies();


    for (FBody cuerpo : cuerpos)
    {
      float dx = posx - cuerpo.getX();
      float dy = posy - cuerpo.getY();


      //println(atraccion);
      if (dist(posx, posy, cuerpo.getX(), cuerpo.getY()) < 1000)
      {
        cuerpo.addForce(dx*atraccion, dy*atraccionb);
      }
    }
  }
}
