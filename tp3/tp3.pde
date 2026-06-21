//Mia Lombardi 125612/4 Com4 TP3

//https://www.youtube.com/watch?v=6hd088rSDeg

PImage referencia;
int primera = 15;
int segunda = 15;
boolean agrandar = false;
float escala = 1;
float angulo = 0;
color fondo;
color patron;
boolean modoColor = false;

void setup() {
  size(800, 400);
  referencia = loadImage("circulo.jpeg.jpeg");
  fondo = color(230);
  patron = color(0);
}

void draw() {
  background(fondo);
  image(referencia, 0, 0, 400, 400);

  fill(patron);
  for (int f = 0; f < primera; f++) {
    for (int m = 0; m < segunda; m++) {
      ellipse(
        415 + (400/primera) * f,
        430/segunda * m,
        250/primera,
        180/segunda
        );
    }
  }

  pushMatrix();
  translate(
    (400/primera)/2,
    (430/segunda)/2
    );
  fill(patron);
  for (int s = 0; s < primera; s++) {
    for (int b = 0; b < segunda; b++) {
      ellipse(
        415 + (400/primera) * s,
        430/segunda * b,
        250/primera,
        180/segunda
        );
    }
  }

  popMatrix();
if (agrandar) {
  float distancia = calcularDistancia(mouseX, mouseY, 600, 200);
  escala = map(distancia, 0, 300, 1.5, 1);
  escala = constrain(escala, 1, 1.5);
  angulo = radians(10);
  
} else {
  escala = 1;
  angulo = 0;
}
 float distancia = calcularDistancia(mouseX, mouseY, 600, 200);
  circuloCentro(600, 200);
}

void circuloCentro(float x, float y) {
  pushMatrix();
  translate(x, y);
  rotate(angulo);
  scale(escala);
  noStroke();

  for (int i = 90; i > 0; i--) {
  float ancho = map(i, 90, 0, 300, 250);
  float alto = map(i, 90, 0, 220, 200);
    fill(patron, 7);
    ellipse(0, 0, ancho, alto);
  }
  
  for (int i = 80; i > 0; i--) {
    float ancho = map(i, 50, 0, 350, 300);
    float alto = map(i, 50, 0, 270, 250);
    fill(patron, 7);
    ellipse(0, 0, ancho, alto);
  }

  fill(patron);
  ellipse(0, 0, 250, 170);
  popMatrix();
}

float calcularDistancia(float x1, float y1, float x2, float y2) {
  return dist(x1, y1, x2, y2);
}

void mousePressed() {
  agrandar = !agrandar;
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    agrandar = false;
    escala = 1;
    angulo = 0;
    modoColor = false;
    fondo = color(230);
    patron = color(0);
  }

  if (key == 'c' || key == 'C') {
    modoColor = !modoColor;
    if (modoColor) {
      fondo = color(255, 110, 250);
      patron = color(255);
    } else {
      fondo = color(230);
      patron = color(0);
    }
  }
}
