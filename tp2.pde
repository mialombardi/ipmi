//Mia Lombardi 125612/4 Comisión 4

void draw() {

  // PANTALLA INICIO
  if (estado == 0) {

    background(0);
    image(imgintro, 0, 0, 640, 480);

    fill(0);
    quad(85, 327, 87, 360, 219, 360, 220, 327);

    textFont(font1, 40);
    fill(255, 0, 0);
    text(play, 98, 360);

    textSize(15);
    fill(255);
  }

  // PRIMER PANTALLA
  else if (estado == 1) {

    background(0);
    if (variable<200){
    variable+= 1; 
    }
    
    image(imglight, variable, 0, 300, 200);
     if (variable<500){
       variable+=0;
     
    }
    fill(255);
    textSize(17);
    text(text1, 40, variable+100, 200);
  
    text("x: " + mouseX + ", y: " + mouseY, mouseX, mouseY);
    contador++;
    if (contador>=60*15){
      estado = 2; 
      contador = 0;
   }
  }
  
  //SEGUNDA PANTALLA
  else if(estado==2){
     
  background(255);
  
  if (yryuk<50){
       yryuk += 2;
  }
  image(ryuk, 0, yryuk, 300, 200);
  
  fill(0);
  textSize(18);
  text(textryuk, yryuk, 300, 140);
  text("x: " + mouseX + ", y: " + mouseY, mouseX, mouseY);
   contador++;
   
    if (contador>=60*14){
      estado = 3; 
      contador = 0;
    }
   }
  
  
  //TERCER PANTALLA
  else if(estado==3){
  
   background(0);
  
  if (ylight<50){
       ylight += 1;
  }
  image(lightescribe, ylight, 0 , 300, 200);
  
  fill(255);
  textSize(18);
  text(textlightescribe, ylight, 300, 140);
  text("x: " + mouseX + ", y: " + mouseY, mouseX, mouseY);
   contador++;
   
    if (contador>=60*13){
      estado = 4; 
      contador = 0;
  }
 }
 
 // CUARTA PANTALLA
else if(estado==4){
background(255);
if (yL<50){
       yL += 1;
  }
  image(L,  300-yL,0, 300, 200);
  
  fill(0);
  textSize(20);
  text(textL, yL, 300, 140);
  text("x: " + mouseX + ", y: " + mouseY, mouseX, mouseY);
   contador++;
   
    if (contador>=60*15){
      estado = 5; 
      contador = 0;
   }
  }
   // QUINTA PANTALLA
else if(estado==5){
background(0);
image(finall, 0, 0, 640, 480);
if (yfinal<50){
       yfinal += 2;
  }
  
  fill(255);
  textSize(17);
  text(textfinal, yfinal, 30, 250, 200);
  text("x: " + mouseX + ", y: " + mouseY, mouseX, mouseY);
   contador++;
   
    if (contador>=60*15){
      estado = 6; 
      contador = 0;
   }
  }
  
  // SEXTA PANTALLA
else if(estado==6){

  background(0);

  fill(255, 0, 0);
  rect(200, 300, 240, 70);

  fill(255);
  textFont(font1, 32);
  text("REINICIAR", 220, 345);
}
 }


 // CLICK DEL MOUSE
void mousePressed() {
  
  if (estado == 0){

    // coordenadas del botón PLAY
    if (mouseX > 85 && mouseX < 220 &&
        mouseY > 327 && mouseY < 360) {

      estado = 1;
      contador=0;
      
      // BOTON REINICIAR
if (estado == 6){

  if (mouseX > 200 && mouseX < 440 &&
      mouseY > 300 && mouseY < 370){

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
  }
}
