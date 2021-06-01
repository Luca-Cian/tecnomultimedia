  PImage fondo;
  
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
   println("Créditos referenciados: JUJUTSU KAISEN - Ending | Lost in Paradise feat. AKLO"); 
    
    movdemaki = 26;
    makienx = 0;
    movdepanda = 2000;
    pandaeny = 0;
    eltextdepanda = 1000;
    movdeinumaki = 2000;
    eltextdeinumaki = 2000;
    movdenanami = -2000;
    eltextdenanami = 2000;
    movdemai = 2000;
    eltextdemai = 2000;
    maieny = 0;
    
      fondo = loadImage("fondo.png");
      makite = loadImage("makite.png");
      maki = loadImage("maki.png");
      panda = loadImage("panda.png");
      pandate = loadImage("pandate.png");
      inumaki = loadImage("inumaki.png");
      inumakite = loadImage("inumakite.png");
      nanami = loadImage("nanami.png");
      nanamite = loadImage("nanamite.png");
      mai = loadImage("mai.png");
      maite = loadImage("maite.png");
      frame1 = loadImage("frame1.png");
      frame2 = loadImage("frame2.png"); 
      frame3 = loadImage("frame3.png");
      frame4 = loadImage("frame4.png");
      frame5 = loadImage("frame5.png");
      frame6 = loadImage("frame6.png");
      frame7 = loadImage("frame7.png");
      frame8 = loadImage("frame8.png");
      frame9 = loadImage("frame9.png");
      frame10 = loadImage("frame10.png");
      frame11 = loadImage("frame11.png");
      frame12 = loadImage("frame12.png");
      frame13 = loadImage("frame13.png");
      frame14 = loadImage("frame14.png");
      frame15 = loadImage("frame15.png");
      frame16 = loadImage("frame16.png");
      frame17 = loadImage("frame17.png");
      frame18 = loadImage("frame18.png");
      frame19 = loadImage("frame19.png");
      frame20 = loadImage("frame20.png");
      frame21 = loadImage("frame21.png");
      frame22 = loadImage("frame22.png");
      frame23 = loadImage("frame23.png");
      frame24 = loadImage("frame24.png");
      itadoritebla = loadImage("itadoritebla.png");
      itadoritero = loadImage("itadoritero.png");
      
      font = loadFont("Humanist777BT-RomanCondensedB-48.vlw");
  }
  
  
  void draw(){
   background(#FFFCFC);
   
    
    
    image(fondo, 0, 0);  
    image(maki, makienx, movdemaki); 
    movdemaki = movdemaki - 1;
  
    image(makite, 0, 0); 

    textAlign(CENTER);
    textFont(font); 
    fill(#242524);
    textSize(17);
    
    text("ALI", 183, 144); 
    
    text("LOST IN PARADISE feat. AKLO", 183, 171); 
    
    textSize(23);
    text("(MASTERSIX FOUNDATION)", 363, 500); 
    
    
    image(panda, movdepanda, pandaeny); 
    image(pandate, eltextdepanda, 0); 
    
    image(inumaki, movdeinumaki, 0); 
    movdeinumaki = movdeinumaki - 1;
    image(inumakite, eltextdeinumaki, 0); 
    
    if (movdemaki <= 2){
    makienx = makienx + 1000;
    }
        
    if (movdemaki == 2){
    movdepanda = 0;
    }
    
    if (movdemaki <= 2){
    eltextdepanda = 0; 
    }
    
    if (movdepanda <= 0){ 
    movdepanda -= 1;
    }
    
    if (movdepanda <= -27){
    pandaeny = pandaeny + 1000;
    }   
    
    if (movdepanda == -27){
    movdeinumaki = 0;
    }
    
    if (movdepanda <= -27){
    pandaeny = pandaeny + 1000;
    }
     
    if (movdepanda <= -27){
    eltextdepanda = 1000; 
    }  
    
    if (movdepanda == -27){
    eltextdeinumaki = 0;
    }
  
  
    image(nanami, 0, movdenanami); 
    
  
    image(nanamite, eltextdenanami, 0); 
    
    if (movdeinumaki == -27){
    movdenanami = 0; 
    }   
    
    if (movdeinumaki == -28){
    movdeinumaki = 2000; 
    }   
    
    movdenanami = movdenanami + 0.7;
    
    if (movdeinumaki == -27){
    eltextdenanami = 0;
    }
   
  
    image(mai, movdemai, 0); 
    
   
    image(maite, eltextdemai, maieny);
  
   if (movdenanami == 19.6){
     movdemai = 0;
     eltextdemai = 0;    
    }
   
   if (movdenanami >= 19.6){
   movdenanami = 2000;
   movdemai = movdemai - 1;
   }
  
   if (movdenanami >= 19.6){
   eltextdenanami = 2000;
   }
   
   if (movdemai <= -30){
   background(#FFFFFF); 
   maieny = 2000;
   }
   
    image(frame1, 2000, 0);
    image(frame2, 2000, 0);
    image(frame3, 2000, 0);
    image(frame4, 2000, 0);
    image(frame5, 2000, 0);
    image(frame6, 2000, 0);
    image(frame7, 2000, 0);
    image(frame8, 2000, 0);
    image(frame9, 2000, 0);
    image(frame10, 2000, 0);
    image(frame11, 2000, 0);
    image(frame12, 2000, 0);
    image(frame13, 2000, 0);
    image(frame14, 2000, 0);
    image(frame15, 2000, 0);
    image(frame16, 2000, 0);
    image(frame17, 2000, 0);
    image(frame18, 2000, 0);
    image(frame19, 2000, 0);
    image(frame20, 2000, 0);
    image(frame21, 2000, 0);
    image(frame22, 2000, 0);
    image(frame23, 2000, 0);
    image(frame24, 2000, 0);
    image(itadoritebla, 2000, 0);
    image(itadoritero, 2000, 0);     
   
    if (frameCount == 133){
    image(frame1, 0, 0); 
    }
  
    if (frameCount == 134){
    image(frame1, 2000, 0);
    image(frame2, 0, 0); 
    }
    
    if (frameCount == 135){
    image(frame2, 2000, 0);
    image(frame3, 0, 0); 
    }
  
    if (frameCount == 136){
    image(frame3, 2000, 0);
    image(frame4, 0, 0); 
    }
   
    if (frameCount == 137){
    image(frame4, 2000, 0);
    image(frame5, 0, 0); 
    }
    
    if (frameCount == 138){
    image(frame5, 2000, 0);
    image(frame6, 0, 0); 
    }
    
    if (frameCount == 139){
    image(frame6, 2000, 0);
    image(frame7, 0, 0); 
    }
    
    if (frameCount == 140){
    image(frame7, 2000, 0);
    image(frame8, 0, 0); 
    }
    
    if (frameCount == 141){
    image(frame8, 2000, 0);
    image(frame9, 0, 0); 
    }
    
    if (frameCount == 142){
    image(frame9, 2000, 0);
    image(frame10, 0, 0); 
    }
    
    if (frameCount == 143){
    image(frame10, 2000, 0);
    image(frame11, 0, 0); 
    }
    
    if (frameCount == 144){
    image(frame10, 2000, 0);
    image(frame11, 0, 0); 
    }  
    
    if (frameCount == 145){
    image(frame11, 2000, 0);
    image(frame12, 0, 0); 
    }  
    
    if (frameCount == 146){
    image(frame12, 2000, 0);
    image(frame13, 0, 0); 
    }  
    
    if (frameCount == 147){
    image(frame13, 2000, 0);
    image(frame14, 0, 0); 
    }  
    
    if (frameCount == 148){
    image(frame14, 2000, 0);
    image(frame15, 0, 0); 
    }  
    
    if (frameCount == 149){
    image(frame15, 2000, 0);
    image(frame16, 0, 0); 
    } 
    
    if (frameCount == 150){
    image(frame16, 2000, 0);
    image(frame17, 0, 0); 
    }
    
    if (frameCount == 151){
    image(frame17, 2000, 0);
    image(frame18, 0, 0); 
    }
    
    if (frameCount == 152){
    image(frame18, 2000, 0);
    image(frame19, 0, 0); 
    }
    
    if (frameCount == 153){
    image(frame19, 2000, 0);
    image(frame20, 0, 0); 
    }
    
      if (frameCount == 154){
    image(frame20, 2000, 0);
    image(frame21, 0, 0); 
    }
      
    if (frameCount == 155){
    image(frame21, 2000, 0);
    image(frame22, 0, 0); 
    }
    
    if (frameCount == 156){
    image(frame22, 2000, 0);
    image(frame23, 0, 0); 
    }
    
    if (frameCount >= 133){
    image(itadoritebla, 0, 0);
    }
    
    if (frameCount == 157){
    image(itadoritebla, 2000, 0);
    }
    
    if (frameCount >= 157){
    background(#9e1020);
    image(frame23, 2000, 0);
    image(frame24, 0, 0); 
    }
    
    if (frameCount >= 157){
    image(itadoritero, 0, 0);
    }
    
  }
