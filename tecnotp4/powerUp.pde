class powerUp {
  float chance;
  float posx, posy;
  FCircle pw;
  int cont=0; 
  int t=0;
  int dif=0;
  String tipopw="vidas";

  boolean rapidfire=true;
  boolean atraer=false;



  powerUp() {

    posy= random(height/2, height);
    posx= random (0, width);



    pw = new FCircle(20);
    //pw.setStatic(true);
    pw.setSensor(true);
    pw.setName("pw");
    pw.setPosition(-100, -100);
  }

  void chance() {
    chance = int(random(1, 4));
    if ( chance==2) {
      tipopw="rapidfire";
      pw.attachImage(pwtiros);
    } else if ( chance==1) {
      tipopw="vida";
      pw.attachImage(pwvida);
    } else if ( chance==3) {
      tipopw="atraer";
      pw.attachImage(pwprotector);
    }
  }

  void aparecer() {

    pw = new FCircle(30);
    pw.setStatic(true);
    pw.setSensor(true);
    pw.setName("pw");
    pw.setPosition(random(20, width-20), random((height/2)+20, height-20));
    mundo.add(pw);
  }

  void activarPoder(Personaje pj, Protector pt) {
    cont=t;
    if (tipopw.equals("vida")) {
      pj.vidas=pj.vidas+1;
      vidapw.play();
    } else if (tipopw.equals("rapidfire")) {

      pj.cadencia=10;
      tirospw.play();
    } else if (tipopw.equals("atraer")) {
      pt.atraccionb=3000;
      pt.atraccion=6000;
      atraer=true;
      atraerpw.play();
    }
  }

  void diferencia(Personaje pj, Protector pt) {
    dif=t-cont;
    if (dif>3) {
      pj.cadencia=25;
    } 
    if (dif>4) {      
      pt.atraccion=0;
      pt.atraccionb=0;
      atraer=false;
    }
  }
}
