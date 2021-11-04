class Escenario {
 
  Juego j;

    int x, velo, y;
    PImage fondo, final1, final2, principal; 
    boolean activacionvelo = true;
    
    Escenario( int x_, int y_ ) {

    fondo =  loadImage("escenario.jpg");  
    final1 =  loadImage("fin1.jpg"); 
    final2 =  loadImage("fin2.png");     
    principal =  loadImage("principal.jpg");  
    x = x_;
    y = y_;
  }
  
  void setup() {

  }
  
  void pantallaprincipal(){
   image(principal, 0, 0); 
    
  }
  
  void perdiste(){
    
    
  }
  
  void fondo() {
   image(fondo, velo, y);
   if (activacionvelo == true && velo >= -11150){   
   velo -= 10;
   }
   else{
   velo -= 0;
   }      

  }
  
  void final1(){
  image(final1, x, y); 
  activacionvelo = false;  
  }
  
  void final2(){
  image(final2, x, y); 
  activacionvelo = false;  
  }  
  
  void reset(){
  velo = 0;
  activacionvelo = true;
  }
  

  
}
