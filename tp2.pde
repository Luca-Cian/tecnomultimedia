PImage maki;
PImage makite;
float movdemaki;
float makienx;

PImage panda;
PImage pandate;
int movdepanda;
float pandaeny;
float eltextdepanda;

PImage inumaki;
PImage inumakite;
float movdeinumaki;
float eltextdeinumaki;

PImage nanami;
PImage nanamite;
float movdenanami;
float eltextdenanami;

PImage mai;
PImage maite;
float movdemai;
float eltextdemai;
float maieny;

PImage frame1;
PImage frame2;
PImage frame3;
PImage frame4;
PImage frame5;
PImage frame6;
PImage frame7;
PImage frame8;
PImage frame9;
PImage frame10;
PImage frame11;
PImage frame12;
PImage frame13;
PImage frame14;
PImage frame15;
PImage frame16;
PImage frame17;
PImage frame18;
PImage frame19;
PImage frame20;
PImage frame21;
PImage frame22;
PImage frame23;
PImage frame24;

PImage itadoritebla;
PImage itadoritero;


PFont font;



void setup(){
  
 size (640, 360); 
 frameRate (10);
  
  movdemaki = 22;
  makienx = 0;
  movdepanda = 2000;
  pandaeny = 0;
  eltextdepanda = 1000;
  movdeinumaki = 2000;
  eltextdeinumaki = 2000;
  movdenanami = 2000;
  eltextdenanami = 2000;
  movdemai = 2000;
  eltextdemai = 2000;
  maieny = 0;
  
font = loadFont("Humanist777BT-RomanCondensedB-48.vlw");
  
}


void draw(){

 background(#FFFCFC);
  
  println(frameCount);
  
  maki = loadImage("maki.jpg");
  image(maki, makienx, movdemaki); 
  movdemaki = movdemaki - 1;
  
  makite = loadImage("makite.png");
  image(makite, 0, 0); 
  
  
  textAlign(CENTER);
  textFont(font); 
  fill(#242524);
  textSize(17);
  
  text("ALI", 183, 144); 
  
  text("LOST IN PARADISE feat. AKLO", 183, 171); 
  
  textSize(23);
  text("(MASTERSIX FOUNDATION)", 363, 500); 
  
  panda = loadImage("panda.jpg");
  image(panda, movdepanda, pandaeny); 
  
  pandate = loadImage("pandate.png");
  image(pandate, eltextdepanda, 0); 
  
  inumaki = loadImage("inumaki.jpg");
  image(inumaki, movdeinumaki, 0); 
  movdeinumaki = movdeinumaki - 1;
  
  inumakite = loadImage("inumakite.png");
  image(inumakite, eltextdeinumaki, 0); 
  
  if (movdemaki <= 12){
  makienx = makienx + 1000;
  }
      
  if (movdemaki == 12){
  movdepanda = 0;
  }
  
  if (movdemaki <= 12){
  eltextdepanda = 0; 
  }
  
  if (movdepanda <= 0){ 
  movdepanda -= 1;
  }
  
  if (movdepanda <= -10){
  pandaeny = pandaeny + 1000;
  }   
  
  if (movdepanda == -10){
  movdeinumaki = 0;
  }
  
   if (movdepanda <= -10){
   pandaeny = pandaeny + 1000;
   }
   
   if (movdepanda <= -10){
   eltextdepanda = 1000; 
   }  
  
  if (movdepanda == -10){
  eltextdeinumaki = 0;
  }

   nanami = loadImage("nanami.jpg");
  image(nanami, 0, movdenanami); 
  
  nanamite = loadImage("nanamite.png");
  image(nanamite, eltextdenanami, 0); 
  
  if (movdeinumaki == -10){
  movdenanami = 0; 
  }   
  
  movdenanami = movdenanami + 1;
  
  if (movdeinumaki == -10){
  eltextdenanami = 0;
  }
 
  mai = loadImage("mai.jpg");
  image(mai, movdemai, 0); 
  
  maite = loadImage("maite.png");
  image(maite, eltextdemai, maieny);

 if (movdenanami == 10){
   movdemai = 0;
   eltextdemai = 0;
 }

 movdemai = movdemai - 1;
 
 if (movdenanami == 10){
 movdenanami = 2000;
 }

 if (movdenanami == 10){
 eltextdenanami = 2000;
 }
 
 if (movdemai <= -10){
 background(#FFFFFF); 
 maieny = 2000;
 }
 

  frame1 = loadImage("frame1.png");
  image(frame1, 2000, 0);
  
  frame2 = loadImage("frame2.png");
  image(frame2, 2000, 0);

  frame3 = loadImage("frame3.png");
  image(frame3, 2000, 0);
  
  frame4 = loadImage("frame4.png");
  image(frame4, 2000, 0);
  
  frame5 = loadImage("frame5.png");
  image(frame5, 2000, 0);
  
  frame6 = loadImage("frame6.png");
  image(frame6, 2000, 0);
  
  frame7 = loadImage("frame7.png");
  image(frame7, 2000, 0);
  
  frame8 = loadImage("frame8.png");
  image(frame8, 2000, 0);
  
  frame9 = loadImage("frame9.png");
  image(frame9, 2000, 0);
  
  frame10 = loadImage("frame10.png");
  image(frame10, 2000, 0);
  
  frame11 = loadImage("frame11.png");
  image(frame11, 2000, 0);
  
  frame12 = loadImage("frame12.png");
  image(frame12, 2000, 0);
  
  frame13 = loadImage("frame13.png");
  image(frame13, 2000, 0);
  
  frame14 = loadImage("frame14.png");
  image(frame14, 2000, 0);
  
  frame15 = loadImage("frame15.png");
  image(frame15, 2000, 0);
  
  frame16 = loadImage("frame16.png");
  image(frame16, 2000, 0);
  
  frame17 = loadImage("frame17.png");
  image(frame17, 2000, 0);
  
  frame18 = loadImage("frame18.png");
  image(frame18, 2000, 0);
  
  frame19 = loadImage("frame19.png");
  image(frame19, 2000, 0);
  
  frame20 = loadImage("frame20.png");
  image(frame20, 2000, 0);
  
  frame21 = loadImage("frame21.png");
  image(frame21, 2000, 0);
  
  frame22 = loadImage("frame22.png");
  image(frame22, 2000, 0);
  
  frame23 = loadImage("frame23.png");
  image(frame23, 2000, 0);
  
  frame24 = loadImage("frame24.png");
  image(frame24, 2000, 0);
  
  itadoritebla = loadImage("itadoritebla.png");
  image(itadoritebla, 2000, 0);
  
  itadoritero = loadImage("itadoritero.png");
  image(itadoritero, 2000, 0);
  

  
  if (frameCount == 47){
  image(frame1, 0, 0); 
  }
  
  if (frameCount == 48){
  image(frame1, 2000, 0);
  image(frame2, 0, 0); 
  }
  
  if (frameCount == 49){
  image(frame2, 2000, 0);
  image(frame3, 0, 0); 
  }
  
  if (frameCount == 50){
  image(frame3, 2000, 0);
  image(frame4, 0, 0); 
  }
  
  if (frameCount == 51){
  image(frame4, 2000, 0);
  image(frame5, 0, 0); 
  }
  
  if (frameCount == 52){
  image(frame5, 2000, 0);
  image(frame6, 0, 0); 
  }
  
  if (frameCount == 53){
  image(frame6, 2000, 0);
  image(frame7, 0, 0); 
  }
  
  if (frameCount == 54){
  image(frame7, 2000, 0);
  image(frame8, 0, 0); 
  }
  
  if (frameCount == 55){
  image(frame8, 2000, 0);
  image(frame9, 0, 0); 
  }
  
  if (frameCount == 56){
  image(frame9, 2000, 0);
  image(frame10, 0, 0); 
  }
  
  if (frameCount == 57){
  image(frame10, 2000, 0);
  image(frame11, 0, 0); 
  }
  
  if (frameCount == 58){
  image(frame10, 2000, 0);
  image(frame11, 0, 0); 
  }  
  
  if (frameCount == 59){
  image(frame11, 2000, 0);
  image(frame12, 0, 0); 
  }  
  
  if (frameCount == 60){
  image(frame12, 2000, 0);
  image(frame13, 0, 0); 
  }  
  
  if (frameCount == 61){
  image(frame13, 2000, 0);
  image(frame14, 0, 0); 
  }  
  
  if (frameCount == 62){
  image(frame14, 2000, 0);
  image(frame15, 0, 0); 
  }  
  
  if (frameCount == 63){
  image(frame15, 2000, 0);
  image(frame16, 0, 0); 
  } 
  
  if (frameCount == 64){
  image(frame16, 2000, 0);
  image(frame17, 0, 0); 
  }
  
  if (frameCount == 65){
  image(frame17, 2000, 0);
  image(frame18, 0, 0); 
  }
  
  if (frameCount == 66){
  image(frame18, 2000, 0);
  image(frame19, 0, 0); 
  }
  
  if (frameCount == 67){
  image(frame19, 2000, 0);
  image(frame20, 0, 0); 
  }
  
    if (frameCount == 68){
  image(frame20, 2000, 0);
  image(frame21, 0, 0); 
  }
    
  if (frameCount == 69){
  image(frame21, 2000, 0);
  image(frame22, 0, 0); 
  }
  
  if (frameCount == 70){
  image(frame22, 2000, 0);
  image(frame23, 0, 0); 
  }
  
    if (frameCount >= 47){
  image(itadoritebla, 0, 0);
  }
  
  if (frameCount == 71){
  image(itadoritebla, 2000, 0);
  }
  
  if (frameCount >= 71){
  background(#9e1020);
  image(frame23, 2000, 0);
  image(frame24, 0, 0); 
  }
  
  if (frameCount >= 71){
  image(itadoritero, 0, 0);
  }

  
  
}
