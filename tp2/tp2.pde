//joaquin lopez bravo\\

//variables para textos
int posX= -100;
int posXF=700;
int tam=0;
int maxtam=50;
int crece=10;


int posx1=20;
int posy1=500;
int stopy1=20;

int posx2=40;
int posy2=640;
int stopy2=20;

int posx3;
int posy3;
int stopy3;

//velocidades
int velX=5;
int velY=5;

//rectangulos
int posrecX1;
int posrecY1;
int posXF1;
int posYF1;
int AR1 = 0;
int AM1 = 470;
int OY1 = 480;

//IMAGENES
PImage imagen1;
PImage imagen2;
PImage imagen3;
PImage imagen4;
PImage imagen5;

//FUENTES
PFont regular;
PFont bold;

//CONTADOR DE SEGUNDO
int tiempo;

//TEXTOS
String t1="         Hola catedra!\n\nEn esta presentación vamos a hablar de...\nPaladins, Champions of the realm! :D";
String t2="Que es paladins?";
String t3="Es un videojuego multijugador online de genero hero shooter en primera persona por equipos";
String t4="Que es un hero shooter?\nEs un juego de disparos en el que podés elegir entre un repertorio de personajes, los cuales tienen diferentes habilidades y estadísticas.";
String t5="Cuenta con diversos modos de juego en los que cambia completamente la forma de jugar en equipo.";
String t6="Actualmente el juego cuenta con un total de 61 personajes y 4 roles, los cuales son Soporte, Daño, Flanco y Tanque.";
String t7="tremendoooooooooooo!";

//FONDOS
//1



void setup() {
  //valores
  imagen1=loadImage("imagen1.jpg");
  imagen2= loadImage("imagen2.jpg");
  imagen3= loadImage("imagen3.jpg");
  imagen4= loadImage("imagen4.jpg");
  imagen5= loadImage("imagen5.jpg");
  regular= loadFont("regular.vlw");
  bold= loadFont("bold.vlw");

  //valores de textos


  size(640, 480);
  background(100);
}



void draw() {
  tiempo++;

  //CONSOLA

  println( mouseX + " / " + mouseY );
  println("frame N°=", tiempo);

  noStroke();
  textFont(regular);
  textAlign(LEFT, TOP);
  //imageMode(CENTER);
  image(imagen1, 0, 0);

  //fondo de texto
  int posrecy1= OY1 - AR1;

  fill(0, 0, 0, 200);
  rect(10, posrecy1, 400, AR1, 20);
  if (AR1 < AM1) {
    AR1 +=5;
  } else if (posrecy1>10) {
    posrecy1= posrecy1 - velY;
  }

  //texto

  if (posy1==500);
  { //mover texto
    posy1 -= velY;
  }
  if (posy1 == stopy1) { //frenar texto
    posy1+= velY;
  }

  fill(255);
  text(t1, posx1, posy1, 400, 700);

  //PANTALLA 2

  if (tiempo>=350) {
    image(imagen2, 0, 0);

    fill(0, 0, 0, 200);
    rect(310, 10, 400, 460, 50);
  }

  textAlign(RIGHT);
  fill(255);
  if ( tiempo >= 400) {
    textFont(bold);
    text(t2, 320, 20, 300, 700);
  }

  if ( tiempo >= 500) {
    textFont(regular);
    text(t3, 320, 80, 300, 700);
  }

  //PANTALLA 3

  textAlign(CORNER, LEFT);
  textSize(30);


  if (tiempo >= 750) {
    image(imagen3, 0, 0);
    fill(0, 0, 0, 200);
    rect(20, 300, 600, 300, 50);
  }
  if (tiempo >= 760) {
    fill(255);
    text(t4, posx2, posy2, 570, 600);
  }

  if (tiempo >= 760 && posy2 > 320) {
    posy2= posy2 - velY;
  }
  //if (tiempo >= 760 && posy2 == 320) {
  // posy2= posy2 + velY;




  // PANTALLA 4

  if (tiempo >= 1200) {
    image(imagen4, 0, 0);
  }

  if (tiempo >= 1250) {
    fill(0, 0, 0, 200);
    rect(10, -50, 410, 200, 20);
  }

  if (tiempo >= 1300 ) {
    textAlign(CORNER);
    fill(255);
    text(t5, 20, 20, 400, 500);
  }

  //pantalla 5
  if (tiempo >= 1600) {
    image(imagen5, 0, 0);
  }

  if (tiempo>=1650) {
    fill (0, 0, 0, 200);
    rect(30, 30, 600, 420, 50);
  }


  textSize(50);
  if (tiempo >= 1700) {
    fill(250);
    text(t6, 47, 70, 600, 500);
  }
  if (tiempo >= 2150) {
    text(t7, 188, 290);
  }

  if (tiempo >= 2250) {
    textFont(bold);
    textSize(30);
    fill(100,0,0);
    rect(265, 350, 200, 50,50);
    fill(0);
    text("REINICIAR",313,385);
  }
}

void mousePressed() {



  if (tiempo >= 2150 && mouseX > 265 && mouseX < 265 + 200 && mouseY > 350 && mouseY <350 + 50) {
    tiempo = 0; // Reinicia el contador personalizado
  }
}
