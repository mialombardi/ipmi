PImage referencia;
int primera = 15;
int segunda = 15;
float escala = 1;
color fondo;
color patron;
boolean modoColor = false;
int estado;
int contador;

void setup() {
  size(800, 400);
  referencia = loadImage("circulo.jpeg.jpeg");
  fondo = color(230);
  patron = color(0);
}
