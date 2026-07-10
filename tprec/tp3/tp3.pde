//Mia Lombardi 125612/4 Com4 TP3

//https://youtu.be/SM76BG821As

void draw() {
 patronCirculos(600, 200);
 text("x: " + mouseX + ", y:" + mouseY, mouseX, mouseY);
}

void mousePressed() {
  if (estado==0) {
    if (mouseX>0 && mouseX<800 && mouseY>0 && mouseY<400) {
      estado = 1;
      contador = 0;
    }
  }
}
void keyPressed() {
  if (key == 'c' || key == 'C') {
    if (estado==1) {
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
  if (key == 'r' || key == 'R') {
    estado=0;
    contador=0;
    fondo = color(230);
    patron = color(0);
  }
}
