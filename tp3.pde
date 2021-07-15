  int fondo = 0;
  float movimiento = -60;
  int BarrasVertical = 300;
  int BarrasHorizontal = 700;
  int AnchuraBarra = 11;
  int yAmarillo = 40;
  int yAzul = 160;
  int AnchoRectangulo = 66;
  int AlturaRectangulo = 30;
     
        void setup() {  
          size(700, 300);
          println("https://youtu.be/cj03pOt0YtY");
        }
        
        void draw() {  
          background(255);           
          
          float cuadro = map (width, 0, width, 0, 110);
        
            fill(fondo);
            for (int i=0; i<BarrasHorizontal; i = i+2*AnchuraBarra) {
              rect(i, 0, AnchuraBarra, BarrasVertical);
            }
        
           stroke(0);  
           strokeWeight(3);
           fill(255); 
           rect(0, 240, 699, 59);
    
          movimiento = movimiento + 1;
      
          noStroke();
          
          fill(255,255,0);
          rect(movimiento, yAmarillo, AnchoRectangulo, AlturaRectangulo);
        
          fill(0,0,255);
          rect(movimiento, yAzul, AnchoRectangulo, AlturaRectangulo);
          
          if (movimiento >= BarrasHorizontal + 70) {
            movimiento = -70;
          }
          
          //Botones
          stroke(8);
          fill(255);    
          rect(330, 250, 40, 40);
          fill(0);
          textSize(30);
          text("R", 340, 280);
          
          stroke(8);
          fill(255);    
          rect(80, 250, 160, 40);
          stroke(4);
          rect(cuadro, 255, 30, 30);
          rect(180, 255, 30, 30);
          fill(0);
          text("-", 117, 279);
          text("+", 183, 280);
          
          stroke(8);
          fill(255);    
          rect(460, 250, 160, 40);
          stroke(4);
          rect(490, 255, 30, 30);
          rect(560, 255, 30, 30);
          fill(0);
          text("<", 493, 280);
          text(">", 565, 280);
          
          if (mousePressed == mouseX>490 && mouseY>254 && mouseX<520 && mouseY<584) {
            movimiento = movimiento - 0.5;
          } if (mousePressed == mouseX>560 && mouseY>254 && mouseX<590 && mouseY<584) {
            movimiento = movimiento + 1;
          } 
          
          noStroke();
                
        }
        
        void mousePressed() {
          if (fondo == 0 && mouseX>0 && mouseY>0 && mouseX<700 && mouseY<240) {
            fondo = 255;
          } else {
            fondo = 0;
          } if (mouseX>110 && mouseY>256 && mouseX<140 && mouseY<285) {
            AnchuraBarra = AnchuraBarra - 1;
          } if (mouseX>180 && mouseY>256 && mouseX<210 && mouseY<285) {
            AnchuraBarra = AnchuraBarra + 1;
          } if (mouseX>330 && mouseY>250 && mouseX<370 && mouseY<290) {
            movimiento = -90;
            AnchuraBarra = 11;
          } 
       
        }
    
