class Obstaculo {
  

  int x = 1900;    
  int y = 136;
  int x2 = x+1300;
  int y2 = y+190;
  int x3 = 4337;
  int y3 = 42;
  int x4 = 5764;
  int y4 = 54;
  int x5 = 5700;
  int y5 = 404;
  int x6 = 6860;
  int y6 = 154;
  int x7 = 8031;
  int y7 = 33;  
  int x8 = 9466;
  int y8 = 356;   
  
  PImage[] barco = new PImage[7]; 
  PImage[] monstruo = new PImage[3];  
  
  Obstaculo( int x_, int y_ ) {
    // inicializar las propiedades/variables
    x = x_;
    y = y_;

  for ( int i = 1; i < barco.length; i++ ) {
    barco[i] = loadImage( "barco" + i + ".png" );  
  }
  for ( int i = 1; i < monstruo.length; i++ ) {
    monstruo[i] = loadImage( "monstruo" + i + ".png" );  
  }  
  }
  

  
  
  void setup() {

  }
  
  void aparecerBarco() {
  x -= 10;
  x2 -= 10;
  x4 -= 10;
  x5 -= 10;
  x6 -= 10;
  x8 -= 10; 
  image(barco[1], x, y);
  image(barco[2], x2, y2);

  image(barco[4], x5, y5);
  image(barco[5], x6, y6);
  image(barco[6], x8, y8);
  
  }
  
  void aparecerMonstruo() {
  x3 -= 10;
  x7 -= 10;  
  image(monstruo[1], x3, y3);
  image(monstruo[2], x7, y7);
  }  
  
  void reset(){
  x = 1900;    
  y = 136;
  x2 = x+1300;
  y2 = y+190;  
  x3 = 4337;
  y3 = 42;
  x4 = 5764;
  y4 = 100;
  x5 = 5700;
  y5 = 365;
  x6 = 6860;
  y6 = 154;
  x7 = 8031;
  y7 = 33;  
  x8 = 9466;
  y8 = 356;  
  }


  float getxba1(){
    return x;
  }
  
  float getyba1(){
  return y;
  }
  
  float getxba2(){
  return x2;
  }
  
  float getyba2(){
  return y2;
  }
  
    float getxmo1(){
  return x3;
  }
  
  float getymo1(){
  return y3;
  }
  

  
      float getxba4(){
  return x5;
  }
  
  float getyba4(){
  return y5;
  }
  
      float getxba5(){
  return x6;
  }
  
  float getyba5(){
  return y6;
  }
  
      float getxmo2(){
  return x7;
  }
  
  float getymo2(){
  return y7;
  }
  
      float getxba6(){
  return x8;
  }
  
  float getyba6(){
  return y8;
  }
  
  void x0(){
   x += 10;
  x2 += 10;
  x3 += 10;  
  x4 += 10;
  x5 += 10;
  x6 += 10;
  x7 += 10;  
  x8 += 10;  
    
  }
  
}
