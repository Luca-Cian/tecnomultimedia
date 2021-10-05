boolean activacionprincipal;
boolean activacioninstrucciones;
boolean activacioncreditos;
boolean[] activacionpantalla = new boolean[21];

PFont fuente;

String[] textos = new String[5];

PImage creditos;
PImage instrucciones;
PImage principal;
PImage textosaltear;
PImage[] pantalla = new PImage[21];

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

  for ( int i = 1; i < pantalla.length; i++ ) {
    pantalla[i] = loadImage( "pantalla" + i + ".png" );  // "+" en datos tipo String concatena (es decir, los une)
  }
  creditos =  loadImage("creditos.png"); 
  instrucciones =  loadImage("instrucciones.png"); 
  principal =  loadImage("principal.jpg"); 
  textosaltear =  loadImage("textosaltear.png"); 

  for ( int i = 1; i < activacionpantalla.length; i++ ) {
    activacionpantalla[i] = false;  // "+" en datos tipo String concatena (es decir, los une)
  }

  activacionprincipal = true;
  activacioninstrucciones = false;

  noStroke();

  textos[0] = "Escapar";
  textos[1] = "Luchar contra él";
  textos[2] = "Esconderte en un barril";
  textos[3] = "Nada";
  textos[4] = "Montarse en un tiburon";

  for ( int i = 0; i < c; i++ ) {  
    posX[i] = random(width);
    posY[i] = random( -400, -61 );
    velY[i] = random( 5, 10 );
    tam[i] = random( 10, 40 );
    celeste[i] = color( 157, 234, 255, random(61, 255) );
  }
}


void draw() {
  println(key);
  textFont(fuente);

  if (activacionprincipal == true) {
    activacioncreditos = false;
    image(principal, 0, 0);
  }

  if (key == ENTER && activacionprincipal == true && activacioncreditos == false) {
    activacioninstrucciones = true;
  }
  if (activacioninstrucciones == true) {
    image(instrucciones, 0, 0);
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
    activacionpantalla[1] = true;
    activacioninstrucciones = false;
    activacionpantalla[2] = false;
  }
  if (activacionpantalla[1] == true) {
    image(pantalla[1], 0, 0);
  }   

  //Pantalla 2
  if (key == 'b' && activacionpantalla[1] == true) {
    activacionpantalla[1] = false;
    activacionpantalla[2] = true;
  }

  if (activacionpantalla[2] == true) {
    image(pantalla[2], 0, 0);
  }
  //Pantalla 3
  if (key == ' ' && activacionpantalla[1] == false && activacionpantalla[2] == true) {
    activacionpantalla[2] = false;
    activacionpantalla[3] = true;
  }
  if (activacionpantalla[3] == true) {
    image(pantalla[3], 0, 0);
  }   
  //Pantalla 4
  if (key == 'b' && activacionpantalla[3] == true) {
    activacionpantalla[3] = false;
    activacionpantalla[4] = true;
  }

  if (activacionpantalla[4] == true) {
    image(pantalla[4], 0, 0);
    fill(150);
    stroke(0);
    //boton 1 de la pantalla 4
    if ( pantalla4boton(480, 150, 214, 81) ) {
      fill(0);
    } else {
      fill(255);
    }
    if ( pantalla4boton(480, 150, 214, 81) ) {
      fill(0);
    } else {
      fill(255);
    }
    rect(480, 150, 214, 81 );      


    if ( pantalla4boton(480, 150, 214, 81) ) {
      pushStyle();
      textSize(25);
      fill(255);
      text(textos[0], 585, 200);
      popStyle();  
      fill(0);
    } else {
      pushStyle();
      fill(0);
      textSize(25);
      text(textos[0], 585, 200);
      popStyle();
      fill(255);
    }
    //boton 2 de la pantalla 4
    if ( pantalla4boton(480, 430, 214, 81) ) {
      fill(0);
    } else {
      fill(255);
    }
    if ( pantalla4boton(480, 430, 214, 81) ) {
      fill(0);
    } else {
      fill(255);
    }
    rect(480, 430, 214, 81 ); 


    if ( pantalla4boton(515, 430, 214, 61) ) {
      pushStyle();
      textSize(25);
      fill(255);
      text(textos[1], 585, 480);
      popStyle();  
      fill(0);
    } else {
      pushStyle();
      fill(0);
      textSize(25);
      text(textos[1], 585, 480);
      popStyle();
      fill(255);
      //pantalla[5]
    }
  }
  if (activacionpantalla[5]==true) {
    image(pantalla[5], 0, 0);
  }
  //pantalla[6]
  if (activacionpantalla[6]==true) {
    image(pantalla[6], 0, 0);
  }  
  if (key == ' ' && activacionpantalla[6] == true) {
    activacionpantalla[5] = false;
    activacionpantalla[7] = true;
  }

  if (activacionpantalla[7] == true) {
    image(pantalla[7], 0, 0);
  }

  if (key == 'b' && activacionpantalla[7] == true) {
    activacionpantalla[6] = false;
    activacionpantalla[8] = true;
  }

  if (activacionpantalla[8] == true) {
    image(pantalla[8], 0, 0);
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

  if (key == ' ' && activacionpantalla[8] == true) {
    activacionpantalla[7] = false;
    activacionpantalla[9] = true;
  }


  if (activacionpantalla[9] == true) {
    image(pantalla[9], 0, 0);
    stroke(255);  
    strokeCap(ROUND);
    textSize(20);
    textAlign(CENTER);
    fill(150);
    //boton 1
    if ( pantalla9boton(80, 140, 240, 80) ) {
      fill(0);
    } else {
      fill(255);
    }
    rect(80, 140, 240, 80);   
    if ( pantalla9boton(80, 140, 240, 80) ) {
      fill(255);
    } else {
      fill(0);
    }
    text(textos[2], 200, 185);


    //boton2
    if ( pantalla9boton(80, 305, 240, 80) ) {
      fill(0);
    } else {
      fill(255);
    }
    rect(80, 305, 240, 80);   
    if ( pantalla9boton(80, 305, 240, 80) ) {
      fill(255);
    } else {
      fill(0);
    }
    text(textos[3], 200, 350);

    //boton3  
    if ( pantalla9boton(80, 485, 240, 80) ) {
      fill(0);
    } else {
      fill(255);
    }
    rect(80, 485, 240, 80);   
    if ( pantalla9boton(80, 485, 240, 80) ) {
      fill(255);
    } else {
      fill(0);
    }
    text(textos[4], 200, 530);
  }


  //esconderse en un barril
  if (activacionpantalla[10]==true) {
    activacionpantalla[8]=false;
    image(pantalla[10], 0, 0);
  }
  if (key == 'b' && activacionpantalla[10] == true) {
    activacionpantalla[9] = false;
    activacionpantalla[11] = true;
  }
  if (activacionpantalla[11] == true) {
    image(pantalla[11], 0, 0);
  }

  if (key == ' ' && activacionpantalla[11] == true) {
    activacionpantalla[10] = false;
    activacionpantalla[12] = true;
  }
  if (activacionpantalla[12] == true) {
    image(pantalla[12], 0, 0);
    if (key == 'b' && activacionpantalla[12] == true) {
      activacionpantalla[12] = false;
      activacionpantalla[20] = true;
    }
    println();
  }

  //nada
  if (activacionpantalla[13]==true) {
    image(pantalla[13], 0, 0);
  }
  if (key == 'b' && activacionpantalla[13] == true) {
    activacionpantalla[12] = false;
    activacionpantalla[14] = true;
  }
  if (activacionpantalla[14]==true) {
    image(pantalla[14], 0, 0);
  }
  if (key == ' ' && activacionpantalla[14] == true) {
    activacionpantalla[13] = false;
    activacionpantalla[15] = true;
  }
  if (activacionpantalla[15]==true) {
    image(pantalla[15], 0, 0);
  }
  if (key == 'b' && activacionpantalla[15] == true) {
    activacionpantalla[14] = false;
    activacionpantalla[16] = true;
  }
  if (activacionpantalla[16]==true) {
    image(pantalla[16], 0, 0);
  }
  if (key == ' ' && activacionpantalla[16] == true) {
    activacionpantalla[16] = false;
    activacionpantalla[20] = true;
  }

  //montarse en tiburon
  if (activacionpantalla[17] == true) {
    image(pantalla[17], 0, 0);
  }
  if (key == 'b' && activacionpantalla[17] == true) {
    activacionpantalla[16] = false;
    activacionpantalla[18] = true;
  }
  if (activacionpantalla[18]==true) {
    image(pantalla[18], 0, 0);
  }
  if (key == ' ' && activacionpantalla[18] == true) {
    activacionpantalla[17] = false;
    activacionpantalla[19] = true;
  }
  if (activacionpantalla[19]==true) {
    image(pantalla[19], 0, 0);
    if (key == 'b' && activacionpantalla[19] == true) {
      activacionpantalla[18] = false;
      activacionpantalla[20] = true;
    }
  } 

  //pantallafinal
  if (activacionpantalla[20] == true) {
    image(pantalla[20], 0, 0);
  }

  if (key == ENTER && activacionpantalla[20] == true) {
    activacionpantalla[20] = false;
    activacionpantalla[1] = false;
    activacionpantalla[2] = false;
    activacionpantalla[3] = false;
    activacionpantalla[4] = false;
    activacionpantalla[5] = false;
    activacionpantalla[6] = false;
    activacionpantalla[7] = false;
    activacionpantalla[8] = false;
    activacionpantalla[9] = false;
    activacionpantalla[10] = false;
    activacionpantalla[11] = false;
    activacionpantalla[12] = false;
    activacionpantalla[13] = false;
    activacionpantalla[14] = false;
    activacionpantalla[15] = false;
    activacionpantalla[16] = false;
    activacionpantalla[17] = false;
    activacionpantalla[18] = false;
    activacionpantalla[19] = false;
    activacionpantalla[20] = false;
    activacioncreditos = true;
  }
}



boolean pantalla9boton( float x, float y, float a, float h ) {
  boolean z;
  if ( mouseX > x && mouseX < x+a && mouseY > y && mouseY < y+h ) {
    z = true;
  } else {
    z = false;
  }
  return z;
}

boolean pantalla4boton( float x, float y, float a, float h ) {
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
  if (key == ' ' && activacionpantalla[4] == true && activacionpantalla[5] == true) {
    activacionpantalla[4] = false;
    activacionpantalla[5] = false;
    activacionprincipal = true;
  }
}

void mousePressed() {
  if (activacionpantalla[4] == true && pantalla4boton(480, 150, 214, 81)) {
    activacionpantalla[5] = true;
  }

  if (activacionpantalla[4] == true && pantalla4boton(480, 430, 214, 81)) {
    activacionpantalla[6] = true;
  }

  if (activacionpantalla[9] == true && pantalla9boton(80, 140, 240, 80 )) {
    activacionpantalla[10] = true;
  }
  if ( activacionpantalla[9] == true && pantalla9boton(80, 305, 240, 80) ) {
    activacionpantalla[13] = true;
    activacionpantalla[11] = false;
  }
  if ( activacionpantalla[9] == true && pantalla9boton(80, 485, 240, 80)) {
    activacionpantalla[15] = false;
    activacionpantalla[17] = true;
  }
}

void creditos() {
  background(255);
  image(creditos, 0, 0);
  image(textosaltear, 0, 0);
}
