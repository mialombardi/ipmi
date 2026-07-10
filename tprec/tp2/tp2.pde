//Mia Lombardi 125612/4 Comisión 4

void draw() {
PANTALLAINICIO();

PRIMERPANTALLA();

SEGUNDAPANTALLA();

TERCERPANTALLA();

CUARTAPANTALLA();

QUINTAPANTALLA();

SEXTAPANTALLA();
}

// CLICK DEL MOUSE

  void mousePressed(){
  if (estado == 0){

    // BOTON PLAY
    if (mouseX > 85 && mouseX < 220 && mouseY > 327 && mouseY < 360) {

      estado = 1;
      contador=0;
        }
      }
     
// BOTON REINICIAR
if (estado == 6){
  if (mouseX > 200 && mouseX < 440 && mouseY > 300 && mouseY < 370){

    estado = 0;

    contador = 0;
    variable = 0;
    yryuk = 0;
    ylight = 0;
    yL = 0;
    yfinal = 0;
      }
     }
  }
