//Luffy es el protagonista

class Luffy {

  Juego j;
  
  PImage luffy;
  int x, y;
  int xg = 11300;
  int yg = 394;
  
  Luffy( int x_, int y_ ) {

    luffy =  loadImage("luffy.png");      
    x = x_;
    y = y_;

  }

  
  void aparecer() {
   image(luffy, x, y);
  }
  

  void colisionfin1(Obstaculo ob, Juego j) {      

    
       float xdeba1 = ob.getxba1();
       float ydeba1 = ob.getyba1();
       float d1 = dist (x+113, y+419, xdeba1+145, ydeba1+124); 
       
       float xdeba2 = ob.getxba2();
       float ydeba2 = ob.getyba2();
       float d2 = dist (x+113, y+419, xdeba2+145, ydeba2+124);       
       

       
       float xdeba4 = ob.getxba4();
       float ydeba4 = ob.getyba4();
       float d5 = dist (x+113, y+419, xdeba4+145, ydeba4+124);
       
       float xdeba5 = ob.getxba5();
       float ydeba5 = ob.getyba5();
       float d6 = dist (x+113, y+419, xdeba5+145, ydeba5+124);
       
       float xdeba6 = ob.getxba6();
       float ydeba6 = ob.getyba6();
       float d8 = dist (x+113, y+419, xdeba6+145, ydeba6+124);   
       
          
       if ( d1 <187){
       j.fin1();
       }
       if ( d2 <90){
       j.fin1();
       }
 
       if ( d5 <90){
       j.fin1();
       } 
       if ( d6 <120){
       j.fin1();
       }   
       if ( d8 <120){
       j.fin1();
       }             
  }
  
    void colisionfin2(Obstaculo ob, Juego j) {
      
       float xdemo1 = ob.getxmo1();
       float ydemo1 = ob.getymo1();
       float d3 = dist (x+113, y+419, xdemo1+172, ydemo1+183); 
        
       
       float xdemo2 = ob.getxmo2();
       float ydemo2 = ob.getymo2();
       float d7 = dist (x+113, y+419, xdemo2+172, ydemo2+183);       
       
       
       if ( d3 <187){
       j.fin2();
       }
       if ( d7 <187){
       j.fin2();
       }            

  }
  
  void colisionganar(Obstaculo ob, Juego j) {
       float xdega = ob.getxba1();
       float ydega = ob.getyba1();
       float dganar = dist (x+113, y+419, xdega+145, ydega+124); 
       if ( dganar >9300){
       j.ganar();
    }
  }
  
  

  void moverIzq() {
    if ( keyCode == LEFT && x > 0 )
      x -= 25;
  }

  void moverDer() {
    if ( keyCode == RIGHT && x < 600 )
      x += 25;
  }
  
    void moverArriba() {
    if ( keyCode == UP && y > -160 )
      y -= 25;
  }
  
     void moverAbajo() {
    if ( keyCode == DOWN && y < 120 )
     y += 25;
  }

  void reset(){
  x = 0;

  }
  
  }
  
  
  
  
  
  
  
  
