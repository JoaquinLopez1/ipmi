PImage imagen;
int cant=14;
int tam;

void setup() {

  imagen= loadImage("imagen.jpg");
  size(800, 400);
  tam= height/cant;
}
void draw() {
  rectMode(CENTER);
  image(imagen, 0, 0, 400, 400);
  for (int largo=height; largo>0; largo-=30) {
    /*
    esto fue un intento de que se pinte uno si y uno no, pero no me salió :(
    if(largo % 2 == 0) {
     fill(0);
     }else {
     fill(255);
     */
    square(600, height/2, largo);
  }
}
