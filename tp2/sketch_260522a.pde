int pantalla = 0;
int tiempoPantalla = 4000;
int inicioTiempo;
PImage rai;
PImage frankenstein;
PImage m21;
PImage nobles;
PImage power;
PFont fuente;
float fade = 0;
boolean aumentarFade = true;
float moverTexto = 0;
float escalaTexto = 0;
boolean iniciar = false;
void setup() {
  size(640, 480);
  rai = loadImage("rai.jpg");
  frankenstein = loadImage("frankenstein.jpg");
  m21 = loadImage("m21.jpg");
  nobles = loadImage("nobles.jpg");
  power = loadImage("power.jpg");
  fuente = createFont("Times New Roman", 32);
  textFont(fuente);
  textAlign(CENTER);
  inicioTiempo = millis();
}
void draw() {
 background(0);
 if (!iniciar) {
 pantallaInicio();
 return;
  }
cambiarPantalla();
if (pantalla == 0) {
pantallaRai();
  } else if (pantalla == 1) {
    pantallaFrankenstein();
  } else if (pantalla == 2) {
    pantallaM21();
  } else if (pantalla == 3) {
   pantallaNobles();
  } else if (pantalla == 4) {
    pantallaPower();
  } else if (pantalla == 5) {
    pantallaFinal();
  }
}
void cambiarPantalla() {
  if (millis() - inicioTiempo > tiempoPantalla && pantalla < 5) {
    pantalla++;
    inicioTiempo = millis();
  }
}
// Inicio
void pantallaInicio() {
  background(10);
  fill(255);
  textSize(48);
  text("NOBLESSE", width/2, 140);
  fill(180);
  textSize(22);
  text("TP2", width/2, 200);
  fill(80, 0, 120);
  rect(220, 300, 200, 60, 20);
  fill(255);
  textSize(28);
  text("INICIAR", width/2, 340);
}
// Rai
void pantallaRai() {
  image(rai, 0, 0, width, height);
  if (aumentarFade) {
    fade += 3;
  } else {
    fade -= 3;
  }
  if (fade >= 255 || fade <= 0) {
    aumentarFade = !aumentarFade;
  }
  fill(255, fade);
  textSize(40);
  text("820 años despues...", width/2, 430);
}
// Frankenstein
void pantallaFrankenstein() {
  image(frankenstein, 0, 0, width, height);
  moverTexto += 2;
  if (moverTexto > width + 200) {
    moverTexto = -200;
  }
  fill(255);
  textSize(34);
  text("El sirviente mas poderoso", moverTexto, 430);
}
// M21
void pantallaM21() {
  image(m21, 0, 0, width, height);
  escalaTexto = sin(frameCount * 0.08) * 10;
  fill(255, 0, 0);
  textSize(36 + escalaTexto);
  text("El pasado no puede escapar", width/2, 430);
}
// Seira y Regis
void pantallaNobles() {
  image(nobles, 0, 0, width, height);
 if (mousePressed) {
  fill(255, 215, 0);
} else {
  fill(255);
}
  textSize(38);
  text("Los nobles observan", width/2, 430);
}
// Rai 2
void pantallaPower() {
  image(power, 0, 0, width, height);
  float brillo = sin(frameCount * 0.1) * 127 + 128;
  fill(brillo, brillo, 255);
  textSize(54);
  text("NOBLESSE", width/2, 430);
  fill(255);
  for (int i = 0; i < 20; i++) {
    ellipse(random(width), random(height), 3, 3);
  }
}
// Final
void pantallaFinal() {
  background(0);
  fill(255);
  textSize(50);
  text("FIN", width/2, 150);
  textSize(26);
  text("Gracias por ver", width/2, 220);
  fill(100, 0, 180);
  rect(220, 300, 200, 60, 20);
  fill(255);
  textSize(28);
  text("REINICIAR", width/2, 340);
}
void mouseClicked() {
  if (!iniciar &&
    mouseX > 220 &&
    mouseX < 420 &&
    mouseY > 300 &&
    mouseY < 360) {
    iniciar = true;
    pantalla = 0;
    inicioTiempo = millis();
  }
  if (pantalla == 5 &&
    mouseX > 220 &&
    mouseX < 420 &&
    mouseY > 300 &&
    mouseY < 360) {
    pantalla = 0;
    inicioTiempo = millis();
    fade = 0;
    moverTexto = 0;
  }
}
