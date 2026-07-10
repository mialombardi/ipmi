 void PANTALLAINICIO(){
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
  }

  void PRIMERPANTALLA() {
  if (estado == 1) {

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
  }
  
 void SEGUNDAPANTALLA() {
 if(estado==2){
     
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
   }
  
  
void TERCERPANTALLA() {
 if(estado==3){
  
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
 }
 
void CUARTAPANTALLA() {
 if(estado==4){
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
  }
 void QUINTAPANTALLA() {
if(estado==5){
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
  }
  
 void SEXTAPANTALLA() {
if(estado==6){

  background(0);
  image(imgreinicio, 0, 0, 640, 480);
  fill(255, 0, 0);
  rect(200, 300, 240, 70);

  fill(255);
  textFont(font1, 32);
  text("REINICIAR", 235, 345);
   }
  }
 
