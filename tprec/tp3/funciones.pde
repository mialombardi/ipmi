void patronCirculos(float x, float y) {
  if (estado==0) {
    contador++;
    background(fondo);
    image(referencia, 0, 0, 400, 400);
    fill(patron);
    for (int f = 0; f < primera; f++) {
      for (int m = 0; m < segunda; m++) {
        noStroke();
        ellipse(415 + (400/primera) * f, 430/segunda * m, 250/primera, 180/segunda);
      }
    }

    pushMatrix();
    translate((400/primera)/2, (430/segunda)/2);
    fill(patron);
    for (int s = 0; s < primera; s++) {
      for (int b = 0; b < segunda; b++) {
        ellipse(415 + (400/primera) * s, 430/segunda * b, 250/primera, 180/segunda);
      }
    }

    popMatrix();
    
//Interaccion fondo y patron
  } else if (estado==1) {
    background(fondo);
    image(referencia, 0, 0, 400, 400);
    for (int f = 0; f < primera; f++) {
      for (int m = 0; m < segunda; m++) {
        noStroke();
        fill(map(f, 0, primera, 60, 215), map(m, 0, segunda, 33, 255), sin(frameCount*0.12)*125+125);
        ellipse(415 + (400/primera) * f, 430/segunda * m, 250/primera, 180/segunda);
      }
    }
    pushMatrix();
    translate((400/primera)/2, (430/segunda)/2);
    for (int s = 0; s < primera; s++) {
      for (int b = 0; b < segunda; b++) {
        noStroke();
        fill(map(s, 0, primera, 215, 60), map(b, 0, segunda, 255, 33), sin(frameCount*0.12)*125+125);
        ellipse(415 + (400/primera) * s, 430/segunda * b, 250/primera, 180/segunda);
      }
    }
    
    popMatrix();
  }
  
  
  
//giro en interacción
  pushMatrix();
  translate(x, y);
  
  if (estado ==1) {
    float angulo = map(mouseX, 0, 400, 0, 360);
    rotate(radians(angulo));
  }
  
  noStroke();
  for (int i = 110; i > 0; i--) {
    float ancho = map(i, 90, 0, 300, 250);
    float alto = map(i, 90, 0, 220, 200);
    fill(patron, 7);
    ellipse(0, 0, ancho, alto);
  }

  for (int i = 70; i > 0; i--) {
    float ancho = map(i, 50, 0, 350, 300);
    float alto = map(i, 50, 0, 270, 250);
    fill(patron, 7);
    ellipse(0, 0, ancho, alto);
  }
  
//cambio de color del circulo en la interacción
  if (estado==1) {
    fill(circuloEstado(120, 180));
  } else {
    fill (patron);
  }
  ellipse(0, 0, 240*escala, 160*escala);
  popMatrix();
}

//color del circulo en la interacción 
color circuloEstado(float Minimo, float Maximo) {
  return color(random(Minimo, Maximo), random (0, 2), random (180, 255));
}
