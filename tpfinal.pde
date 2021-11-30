//Link del video: https://youtu.be/wxo-JR9pfJM

import processing.sound.*;

SoundFile piew;

aventura a;

void setup() {
  size(400, 500);
  a = new aventura();
piew = new SoundFile (this, "piew.aiff");
}

void draw() {
a.draw();
}

void mousePressed(){
 a.mousePressed();      
}

void keyPressed(){
 a.keyPressed(); 
  
}
