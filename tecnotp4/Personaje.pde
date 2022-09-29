
class Personaje {
  FMouseJoint cadena;
  FCircle maso;
  FCircle maso2;
  int vidas=3;
  int cadencia=25;
  boolean muerto=false;
  

  Personaje() {
    maso = new FCircle(70);
    maso.setPosition(width/2, 600);
    maso.setStatic(false);
    maso.setName("maso"); 
    maso.setRotatable(false);
    maso.setDensity(1000);
    mundo.add(maso);
  

 
    cadena= new FMouseJoint(maso, width/2, 600);
    cadena.setFrequency(400000);
  
    mundo.add(cadena);
    
  }
    
    


  void posicionPj() {
    cadena.setTarget(mouseX, mouseY);
    laseres(mouseX, mouseY);
    
   //println(vidas);
  }

  void laseres(float posx_, float posy_) {

    if (!muerto) {
      if (frameCount % cadencia == 0 && frameCount < 10000)
      {
        FBox laser = new FBox(2,10);
        laser.setPosition(posx_, posy_-30);
        laser.setName("laser");
        laser.setBullet(true);
        laser.setDensity(100000);
        laser.setFill(230, 100, 150);
        laser.setVelocity(0, -10000);
        laser.attachImage(bala1);
        mundo.add(laser);
      }
    }
    
    if (vidas == 3){
      maso.attachImage(pj1);
    }
    if (vidas == 2){
      maso.attachImage(pj2);
    }
    if (vidas == 1){
      maso.attachImage(pj3);
    }       
    
  }

  void vida() {

    vidas=vidas-1;
    if (vidas==0) {
      muerto=true;
    }
        
  }
}
