class botones {
  
PFont courier;  
String [] texto;



  botones(){
  texto= loadStrings("texto.txt");
  courier = loadFont ("CourierNewPS-BoldMT-18.vlw");
  }
  
void botonDibujado(int px, int py, int ancho, int alto) {
  if (botonOver(mouseX, mouseY, px, py, ancho, alto)) {
    fill(0, 150, 240);
  } else {
    fill(0, 0, 255);
  }
  rect(px, py, ancho, alto, alto/4);
}

void boton(int px, int py, int ancho, int alto, String mensaje) {
  if (botonOver(mouseX, mouseY, px, py, ancho, alto)) {
    noStroke ();
    fill(#BF885E);
  } else {
    noStroke ();
    fill(#623919);
  }
  
 rect(px, py, ancho, alto, alto/4);
  fill(250); 
  textFont (courier);
  textSize(18); 
  textAlign(LEFT);
  text(mensaje, px+8, py+30);
}
void boton2(int px, int py, int ancho, int alto, String mensaje) {
  if (botonOver(mouseX, mouseY, px, py, ancho, alto)) {
    noStroke ();
    fill(50);
  } else {
    noStroke ();
    fill(30);
  }
  
 rect(px, py, ancho, alto, alto/4);
  fill(200); 
  textSize(18); 
  textAlign(LEFT);
  text(mensaje, px+10, py+20);
}

boolean botonPressed(int mx, int my, int px, int py, int ancho, int alto) {// mouse, ubicacion y tamaño
  boolean presionado = mx>px && mx<px+ancho && my>py&&my<py+alto == true;
  return presionado;
}
boolean botonOver(int mx, int my, int px, int py, int ancho, int alto) {
  if (mx>px && mx<px+ancho && my>py && my<py+alto) {
    return true;
  } else {
    return false;
  }

}

}
