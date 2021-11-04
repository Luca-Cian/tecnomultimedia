
Juego juego;

void setup() {
  size (800, 600); 
juego = new Juego();
  juego.setup();
println("https://youtu.be/5S44wgchtF0");
}

void draw() {
juego.draw();

}


void keyPressed(){
juego.teclado();
}
