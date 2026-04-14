PImage img;
void setup(){
size(800,400);
img = loadImage("matrimonio.jpg");
}
void draw(){
background(200);
image(img, 0, 0, 400, 400);
noStroke();
//hombre
fill(40, 40, 60);
rect(450, 120, 120, 200);
fill(220, 200, 180);
ellipse(510, 100, 60, 60);
fill(20);
rect(480, 40, 60, 20);
ellipse(510, 70, 120, 30);
//fondo gris y rojo
fill(0, 50);
ellipse(470, 330, 200, 30);
fill(150, 50, 50);
rect(640, 0, 400, 400);
//mujer
fill(0, 120, 0);
triangle(650, 120, 580, 320, 720, 320);
fill(0, 120, 0);
circle(640, 200, 70);
fill(220, 200, 180);
ellipse(650, 100, 50, 50);
fill(240);
triangle(630, 60, 600, 90, 720, 110);
//suelo
fill(80, 47, 47);
rect(400, 330, 400, 100);
//perro
fill(120, 80, 50);
rect(520, 355, 70, 40);
rect(580, 335, 30, 30);
circle(584, 335, 12);
circle(605, 335, 12);
circle(520, 355, 15);
//manos
stroke(220, 200, 180);
strokeWeight(3);
line(520, 170, 590, 180);
line(650, 170, 590, 175);
}
