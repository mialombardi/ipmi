int variable = -200;
PImage imgintro;
PFont font1;
String play;
int estado;
String text1;
PImage imglight;
int contador;
PImage ryuk;
int yryuk = -200;
String textryuk;
int ylight = -200;
PImage lightescribe;
String textlightescribe;
int yL= -200;
PImage L;
String textL;
PImage finall;
int yfinal= -200;
String textfinal;
PImage imgreinicio;



void setup() {
  size(640, 480);
  imgintro = loadImage("Imagen1.jpg");
  font1 = loadFont("deathnote.vlw");
  play = "PLAY";
  text1 = "Light Yagami es un estudiante de 17 años, el número uno de Japón en exámenes.\n Brillante, ambicioso y profundamente frustrado con un mundo lleno de crimen \ne injusticia. Un día, un cuaderno negro cae del cielo con instrucciones simples,\n escribe un nombre y esa persona morirá.";
  imglight = loadImage("light1.png"); 
  println(variable);
  contador++;
  ryuk = loadImage("ryuk.png");
  textryuk="Ryuk, un dios de la muerte, aparece ante Light.\n Él dejó caer el cuaderno por aburrimiento.\n Ahora observa todo sin intervenir, solo curioso por lo que Light hará.";
  lightescribe= loadImage("lightescribe.jpeg");
  textlightescribe= "Light decide usar el cuaderno para eliminar a criminales y crear un\n mundo sin crimen. El mundo lo llama Kira. Algunos lo veneran como\n un dios, otros le temen.";
  L=loadImage("L.png");
  textL="El misterioso detective L es contratado para atrapar a Kira.\n Su inteligencia es igual o mayor a la de Light. Comienza\n un duelo mental sin igual entre los dos genios.";
  finall= loadImage("finall.jpg");
  textfinal= "Light y L se vuelven aliados falsos mientras cada uno intenta descubrir quién es el otro.\n El engaño, la manipulación y la psicología son las armas de ambos en esta guerra de mentes\n\nEl poder corrompe a Light. Al final, ni el genio ni el cuaderno pueden salvarlo. Death Note pregunta: \n¿puede alguien imponer justicia absoluta sin perder su humanidad?";
  imgreinicio= loadImage("imagenreinicio.jpg");
}
