boolean activacionprincipal;
boolean activacioninstrucciones;
boolean activacioncreditos;
boolean activacionpantalla1;
boolean activacionpantalla2;
boolean activacionpantalla3;
boolean activacionpantalla4;
boolean activacionpantalla5;
boolean activacionpantalla6;
boolean activacionpantalla7;
boolean activacionpantalla8;
boolean activacionpantalla9;
boolean activacionpantalla10;
boolean activacionpantalla11;
boolean activacionpantalla12;
boolean activacionpantalla13;
boolean activacionpantalla14;
boolean activacionpantalla15;
boolean activacionpantalla16;
boolean activacionpantalla17;
boolean activacionpantalla18;
boolean activacionpantalla19;
boolean activacionpantalla20;

PFont fuente;

PImage creditos;
PImage instrucciones;
PImage pantalla1;
PImage pantalla2;
PImage pantalla3;
PImage pantalla4;
PImage pantalla5;
PImage pantalla6;
PImage pantalla7;
PImage pantalla8;
PImage pantalla9;
PImage pantalla10;
PImage pantalla11;
PImage pantalla12;
PImage pantalla13;
PImage pantalla14;
PImage pantalla15;
PImage pantalla16;
PImage pantalla17;
PImage pantalla18;
PImage pantalla19;
PImage pantalla20;
PImage principal;
PImage textosaltear;

int c = 500;

float[] posX = new float[c];
float posY[] = new float[c];
float[] velY = new float[c];
float[] tam = new float[c];
color[] celeste = new color[c];


void setup() {
  size (800, 600); 

  println("https://youtu.be/V8znbln-IN4");

  textAlign(CENTER);
  fuente = loadFont("BellMT-48.vlw");

  for ( int i = 1; i < 21; i++ ) {
    loadImage("pantalla" + i + ".png");
  }
  pantalla1 = loadImage("pantalla1.png");
  pantalla2 = loadImage("pantalla2.png");
  pantalla3 = loadImage("pantalla3.png");
  pantalla4 = loadImage("pantalla4.png");
  pantalla5 = loadImage("pantalla5.png");
  pantalla6 = loadImage("pantalla6.png");
  pantalla7 = loadImage("pantalla7.png");
  pantalla8 = loadImage("pantalla8.png");
  pantalla9 = loadImage("pantalla9.png");
  pantalla10 = loadImage("pantalla10.png");
  pantalla11 = loadImage("pantalla11.png");
  pantalla12 = loadImage("pantalla12.png");
  pantalla13 = loadImage("pantalla13.png");
  pantalla14 = loadImage("pantalla14.png");
  pantalla15 = loadImage("pantalla15.png");
  pantalla16 = loadImage("pantalla16.png");
  pantalla17 = loadImage("pantalla17.png");
  pantalla18 = loadImage("pantalla18.png");
  pantalla19 = loadImage("pantalla19.png");
  pantalla20 = loadImage("pantalla20.png");
  creditos =  loadImage("creditos.png"); 
  instrucciones =  loadImage("instrucciones.png"); 
  principal =  loadImage("principal.jpg"); 
  textosaltear =  loadImage("textosaltear.png"); 

  activacionprincipal = true;
  activacioninstrucciones = false;

  noStroke();

  for ( int i = 0; i < c; i++ ) {  
    posX[i] = random(width);
    posY[i] = random( -400, -61 );
    velY[i] = random( 5, 10 );
    tam[i] = random( 10, 40 );
    celeste[i] = color( 157, 234, 255, random(61, 255) );
  }
}

void draw() {

  textFont(fuente);

  if (activacionprincipal == true) {
    activacioncreditos = false;
    principal();
  }

  if (key == ENTER && activacionprincipal == true && activacioncreditos == false) {
    activacioninstrucciones = true;
  }
  if (activacioninstrucciones == true) {
    instrucciones();
    activacionprincipal = false;
    activacioncreditos = false;
  }

  //Que con Espacio estén los créditos
  if (key == ' ' && activacioninstrucciones == false && activacionprincipal == true) {
    activacioncreditos = true;
  }
  if (activacioncreditos == true) {
    activacionprincipal=false;
    creditos();
  }
  //pantalla 1
  if (key == ' ' && activacioninstrucciones == true) {
    activacionpantalla1 = true;
    activacioninstrucciones = false;
    activacionpantalla2 = false;
  }
  if (activacionpantalla1 == true) {
    pantalla1();
  }   
  //Pantalla 2
  if (key == 'b' && activacionpantalla1 == true) {
    activacionpantalla1 = false;
    activacionpantalla2 = true;
  }

  if (activacionpantalla2 == true) {
    pantalla2();
  }
  //Pantalla 3
  if (key == ' ' && activacionpantalla1 == false && activacionpantalla2 == true) {
    activacionpantalla2 = false;
    activacionpantalla3 = true;
  }
  if (activacionpantalla3 == true) {
    pantalla3();
  }   
  //Pantalla 4
  if (key == 'b' && activacionpantalla3 == true) {
    activacionpantalla3 = false;
    activacionpantalla4 = true;
  }
  if (activacionpantalla4 == true) {
    pantalla4();
    fill(150);
    stroke(0);
    //boton 1 de la pantalla 4
    if ( pantalla4boton1(480, 150, 214, 81) ) {
      fill(0);
    } else {
      fill(255);
    }
    if ( pantalla4boton1(480, 150, 214, 81) ) {
      fill(0);
    } else {
      fill(255);
    }
    rect(480, 150, 214, 81 );        

    if ( pantalla4boton1(480, 150, 214, 81) ) {
      pushStyle();
      textSize(25);
      fill(255);
      text("Escapar", 585, 200);
      popStyle();  
      fill(0);
    } else {
      pushStyle();
      fill(0);
      textSize(25);
      text("Escapar", 585, 200);
      popStyle();
      fill(255);
    }
    //boton 2 de la pantalla 4
    if ( pantalla4boton2(480, 430, 214, 81) ) {
      fill(0);
    } else {
      fill(255);
    }
    if ( pantalla4boton2(480, 430, 214, 81) ) {
      fill(0);
    } else {
      fill(255);
    }
    rect(480, 430, 214, 81 );        

    if ( pantalla4boton2(515, 430, 214, 61) ) {
      pushStyle();
      textSize(25);
      fill(255);
      text("Luchar contra él", 585, 480);
      popStyle();  
      fill(0);
    } else {
      pushStyle();
      fill(0);
      textSize(25);
      text("Luchar contra él", 585, 480);
      popStyle();
      fill(255);
      //pantalla5
    }    
    if (activacionpantalla5==true) {
      pantalla5();
    }
    //pantalla6
    if (activacionpantalla6==true) {
      pantalla6();
    }  
    if (key == ' ' && activacionpantalla6 == true) {
      activacionpantalla5 = false;
      activacionpantalla7 = true;
    }

    if (activacionpantalla7 == true) {
      pantalla7();
    }

    if (key == 'b' && activacionpantalla7 == true) {
      activacionpantalla6 = false;
      activacionpantalla8 = true;
    }

    if (activacionpantalla8 == true) {
      pantalla8();
      noStroke();
      for ( int i = 0; i < c; i++ ) {  
        posY[i] += velY[i];
        fill( celeste[i] );
        rect( posX[i], posY[i], 4, tam[i]);
        if ( posY[i] >= height+tam[i]/2 ) {
          posX[i] = random(width);
          posY[i] = random( -61, -400 );
          velY[i] = random( 5, 10 );
          tam[i] = random( 10, 40 );
          celeste[i] = color( 157, 234, 255, random(61, 255) );
        }
      }
    }

    if (key == ' ' && activacionpantalla8 == true) {
      activacionpantalla7 = false;
      activacionpantalla9 = true;
    }

    if (activacionpantalla9 == true) {

      pantalla9();
      stroke(255);  
      strokeCap(ROUND);
      textSize(20);
      textAlign(CENTER);
      fill(150);
      //boton 1
      if ( pantalla9boton1(80, 140, 240, 80) ) {
        fill(0);
      } else {
        fill(255);
      }
      rect(80, 140, 240, 80);   
      if ( pantalla9boton1(80, 140, 240, 80) ) {
        fill(255);
      } else {
        fill(0);
      }
      text("Esconderte en un barril", 200, 185);


      //boton2
      if ( pantalla9boton3(80, 305, 240, 80) ) {
        fill(0);
      } else {
        fill(255);
      }
      rect(80, 305, 240, 80);   
      if ( pantalla9boton3(80, 305, 240, 80) ) {
        fill(255);
      } else {
        fill(0);
      }
      text("Nada", 200, 350);

      //boton3  
      if ( pantalla9boton3(80, 485, 240, 80) ) {
        fill(0);
      } else {
        fill(255);
      }
      rect(80, 485, 240, 80);   
      if ( pantalla9boton3(80, 485, 240, 80) ) {
        fill(255);
      } else {
        fill(0);
      }
      text("Montarse en un tiburón", 200, 530);
    }


    //esconderse en un barril
    if (activacionpantalla10==true) {
      activacionpantalla8=false;
      pantalla10();
    }
    if (key == 'b' && activacionpantalla10 == true) {
      activacionpantalla9 = false;
      activacionpantalla11 = true;
    }
    if (activacionpantalla11 == true) {
      pantalla11();
    }
  }

  if (key == ' ' && activacionpantalla11 == true) {
    activacionpantalla10 = false;
    activacionpantalla12 = true;
  }
  if (activacionpantalla12 == true) {
    pantalla12();
    if (key == 'b' && activacionpantalla12 == true) {
      activacionpantalla12 = false;
      activacionpantalla20 = true;
    }
    println();
  }

  //nada
  if (activacionpantalla13==true) {
    pantalla13();
  }
  if (key == 'b' && activacionpantalla13 == true) {
    activacionpantalla12 = false;
    activacionpantalla14 = true;
  }
  if (activacionpantalla14==true) {
    pantalla14();
  }
  if (key == ' ' && activacionpantalla14 == true) {
    activacionpantalla13 = false;
    activacionpantalla15 = true;
  }
  if (activacionpantalla15==true) {
    pantalla15();
  }
  if (key == 'b' && activacionpantalla15 == true) {
    activacionpantalla14 = false;
    activacionpantalla16 = true;
  }
  if (activacionpantalla16==true) {
    pantalla16();
  }
  if (key == ' ' && activacionpantalla16 == true) {
    activacionpantalla16 = false;
    activacionpantalla20 = true;
  }
  println();

  //montarse en tiburon
  if (activacionpantalla17 == true) {
    pantalla17();
  }
  if (key == 'b' && activacionpantalla17 == true) {
    activacionpantalla16 = false;
    activacionpantalla18 = true;
  }
  if (activacionpantalla18==true) {
    pantalla18();
  }
  if (key == ' ' && activacionpantalla18 == true) {
    activacionpantalla17 = false;
    activacionpantalla19 = true;
  }
  if (activacionpantalla19==true) {
    pantalla19();
    if (key == 'b' && activacionpantalla19 == true) {
      activacionpantalla18 = false;
      activacionpantalla20 = true;
    }
  } 
  //pantallafinal
  if (activacionpantalla20 == true) {
    pantalla20();
  }
  if (key == ENTER && activacionpantalla20 == true) {
    activacionpantalla20 = false;
    activacionpantalla1 = false;
    activacionpantalla2 = false;
    activacionpantalla3 = false;
    activacionpantalla4 = false;
    activacionpantalla5 = false;
    activacionpantalla6 = false;
    activacionpantalla7 = false;
    activacionpantalla8 = false;
    activacionpantalla9 = false;
    activacionpantalla10 = false;
    activacionpantalla11 = false;
    activacionpantalla12 = false;
    activacionpantalla13 = false;
    activacionpantalla14 = false;
    activacionpantalla15 = false;
    activacionpantalla16 = false;
    activacionpantalla17 = false;
    activacionpantalla18 = false;
    activacionpantalla19 = false;
    activacionpantalla20 = false;
    activacioncreditos = true;
  }
}



boolean pantalla9boton1( float x, float y, float a, float h ) {
  boolean z;
  if ( mouseX > x && mouseX < x+a && mouseY > y && mouseY < y+h ) {
    z = true;
  } else {
    z = false;
  }
  return z;
}

boolean pantalla9boton2( float x, float y, float a, float h ) {
  boolean z;
  if ( mouseX > x && mouseX < x+a && mouseY > y && mouseY < y+h ) {
    z = true;
  } else {
    z = false;
  }
  return z;
}

boolean pantalla9boton3( float x, float y, float a, float h ) {
  boolean z;
  if ( mouseX > x && mouseX < x+a && mouseY > y && mouseY < y+h ) {
    z = true;
  } else {
    z = false;
  }
  return z;
}

boolean pantalla4boton1( float x, float y, float a, float h ) {
  boolean b;
  if ( mouseX > x && mouseX < x+a && mouseY > y && mouseY < y+h ) {
    b = true;
  } else {
    b = false;
  }
  return b;
}

boolean pantalla4boton2( float x, float y, float a, float h ) {
  boolean b;
  if ( mouseX > x && mouseX < x+a && mouseY > y && mouseY < y+h ) {
    b = true;
  } else {
    b = false;
  }
  return b;
}


void keyPressed() {
  if (key == 'a' ) {
    if (activacioncreditos == true) {
      activacioncreditos = false;
      activacionprincipal = true;
    }
  }
  if (key == ' ' && activacionpantalla4 == true && activacionpantalla5 == true) {
    activacionpantalla4 = false;
    activacionpantalla5 = false;
    activacionprincipal = true;
  }
}

void mousePressed() {
  if ( activacionpantalla4 == true && mouseX > 480 && mouseX < 480+214 && mouseY > 150 && mouseY < 150+81 ) {
    activacionpantalla5 = true;
  }
  if ( activacionpantalla4 == true && mouseX > 480 && mouseX < 480+214 && mouseY > 430 && mouseY < 430+81 ) {
    activacionpantalla6 = true;
  }
  if ( activacionpantalla9 == true && mouseX > 80 && mouseX < 80+240 && mouseY > 140 && mouseY < 140+80 ) {
    activacionpantalla10 = true;
  }
  if ( activacionpantalla9 == true && mouseX > 80 && mouseX < 80+240 && mouseY > 305 && mouseY < 305+80 ) {
    activacionpantalla13 = true;
    activacionpantalla11 = false;
  }
  if ( activacionpantalla9 == true && mouseX > 80 && mouseX < 80+240 && mouseY > 485 && mouseY < 485+80 ) {
    activacionpantalla15 = false;
    activacionpantalla17 = true;
  }
}

void principal() {
  image(principal, 0, 0);
}

void instrucciones() {
  image(instrucciones, 0, 0);
}

void creditos() {
  background(255);
  image(creditos, 0, 0);
  image(textosaltear, 0, 0);
}

void pantalla1() {
  image(pantalla1, 0, 0);
}

void pantalla2() {
  image(pantalla2, 0, 0);
}

void pantalla3() {
  image(pantalla3, 0, 0);
}

void pantalla4() {
  image(pantalla4, 0, 0);
}

void pantalla5() {
  image(pantalla5, 0, 0);
}

void pantalla6() {
  image(pantalla6, 0, 0);
}

void pantalla7() {
  image(pantalla7, 0, 0);
}

void pantalla8() {
  image(pantalla8, 0, 0);
}

void pantalla9() {
  image(pantalla9, 0, 0);
}

void pantalla10() {
  image(pantalla10, 0, 0);
}

void pantalla11() {
  image(pantalla11, 0, 0);
}

void pantalla12() {
  image(pantalla12, 0, 0);
}

void pantalla13() {
  image(pantalla13, 0, 0);
}

void pantalla14() {
  image(pantalla14, 0, 0);
}

void pantalla15() {
  image(pantalla15, 0, 0);
}

void pantalla16() {
  image(pantalla16, 0, 0);
}

void pantalla17() {
  image(pantalla17, 0, 0);
}

void pantalla18() {
  image(pantalla18, 0, 0);
}

void pantalla19() {
  image(pantalla19, 0, 0);
}

void pantalla20() {
  image(pantalla20, 0, 0);
}
