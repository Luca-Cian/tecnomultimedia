void setup(){
  size( 630, 600 );
  colorMode( HSB );
  colorMode( HSB, 360, 100, 100 );
  noFill();
}

void draw(){

background(0, 0, 99);

fill (0, 1, 0);
circle(300, 300, 450);

stroke(#FFFFFF);
strokeWeight(15);
noFill();
triangle(170.1, 80.1, 170.1, 516, 550, 300);

stroke(#FFFFFF);
strokeWeight(10);
noFill();
triangle(99, 300, 399.9, 474.9, 399.9, 126);

noStroke();

fill (0, 100, 100);
circle(550, 300, 100);
fill (0, 100, 100);
triangle(300, 300, 550, 250, 550, 350);

fill (240, 100, 100);
circle(174, 516, 100);
fill (240, 100, 100);
triangle(300, 300, 220, 535, 131, 490);

fill (120, 100, 100);
circle(170, 86, 100); 
fill (120, 100, 100);
triangle(300, 300, 217, 67, 130, 116);

fill (300, 100, 100);
triangle(300, 300, 366, 491, 434, 448);
fill (300, 100, 100);
circle(400, 470, 80);

fill (180, 100, 100);
triangle(300, 300, 100, 260, 100, 340);
fill (180, 100, 100);
circle(100, 300, 80);

fill (60, 100, 100);
circle(400, 130, 80);
fill (60, 100, 100);
triangle(300, 300, 366, 109, 437, 146);

fill (90, 100, 100);
triangle(300, 300, 270, 150, 330, 150);
fill (90, 100, 100);
circle(300, 150, 60);

fill (30, 100, 100);
triangle(300, 300, 411, 201.5, 440, 253);
fill (30, 100, 100);
circle(430, 225, 60);

fill (330, 100, 100);
triangle(300, 300, 411, 398.5, 440, 347);
fill (330, 100, 100);
circle(430, 375, 60);

fill (270, 100, 100);
triangle(300, 300, 270, 450, 330, 450);
fill (270, 100, 100);
circle(300, 450, 60);

fill (210, 100, 100);
triangle(300, 300, 189, 398.5, 160, 347);
fill (210, 100, 100);
circle(170, 375, 60);

fill (150, 100, 100);
triangle(300, 300, 189, 201.5, 160, 253);
fill (150, 100, 100);
circle(170, 225, 60);

}
