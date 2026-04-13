//Mia Lombardi 125612/4 Com4

PImage img;
void setup(){
  size(800,400);
  img=loadImage("2pinturas-famosas-del-renacimiento-retrato-de-cardenal.jpg"); 
}


void draw(){strokeWeight(1);
  
  background(32, 39, 21);
  image(img, 0, 0, 400, 400);
  fill(210);
  triangle(400, 400, 482, 345, 536, 400);
  
 fill(139, 55, 17);
  ellipse(600, 280, 330, 250);
  
 fill(210);
   rect(550, 350, 230, 50);
   triangle(400, 400, 507, 490, 438, 305);
   

    fill(139, 55, 17);
  triangle(713, 350, 800, 400, 730, 200);
  triangle(400, 368, 466, 206, 492, 374);
  
  
 fill(#C6A984);
  rect(571, 120, 65, 50);
  ellipse(590, 88, 111, 110);
  triangle(490, 400, 550, 350, 550, 400);
  triangle(578, 102, 588, 86, 593, 102);

 fill(255, 255, 255);
 ellipse(555, 79, 15, 10);
  ellipse(612, 82, 15, 10);
  
  fill(0);
   ellipse(557, 79, 10, 10);
   ellipse(612, 82, 10, 10);
   
 strokeWeight(0);
fill(#71644E);
 ellipse(590, 50, 120, 30);
 ellipse(645, 64, 30, 70);
 
 strokeWeight(1);
 fill(139, 55, 17);
  triangle(534, 165, 571, 144, 598, 178);
  triangle(598, 178, 636, 142, 710, 186);
  
 fill(5, 5, 5);
  text("x: " + mouseX + ", y:" + mouseY, mouseX, mouseY);
  line(563, 117, 590, 119);
  line(598, 178, 598, 350);
  line(476, 274, 722, 274);
  line(400, 368, 476, 274);
  line(722, 274, 800, 400);
  
  strokeWeight(5);
  point(603, 181);
  point(603, 188);
  point(603, 220);
  point(603, 228);
  point(603, 280);
  point(603, 288);
  point(603, 320);
  point(603, 328);
  
  strokeWeight(1);
  fill(139, 55, 17);
  triangle(531, 45, 531, 14, 575, 14);
  triangle(531, 45, 585, 5, 634, 39);
  triangle(603, 17, 653, 13, 660, 60);
}

  
