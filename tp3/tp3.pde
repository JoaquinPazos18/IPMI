PImage obra;
boolean columna8Activa = true;
boolean mouseSobreRombo = false;
float rotacion = 0;
boolean mostrarGrillaBlanca = false;
float escalaGrillaNegra = 1;







void setup() {
  noStroke();
  size(800, 400);
  obra = loadImage("supernovae.jpg");
}

void draw() {
  background(255);
  image(obra, 0, 0);

  dibujarGrillaNegra(400, 0, 400, 28, height);
  if (mouseX > 400 && mouseY < 200) {
    escalaGrillaNegra = 1.2;  
  } else {
    escalaGrillaNegra = 1;  
  }
  dibujarGrillaBlanca(600, 0, 400, 28, 12, false);
  dibujarRombos(480, 179, 371, 15, 1, 15);

  if (columna8Activa) {
    dibujarCirculos(444, 230, 11.5, 6, 17, 8, 0, 255);
    repetirCirculosEnGrilla(11, 2.2, 30, 30, 0, 255);
  } else {
    dibujarCirculos(444, 230, 11.5, 6, 17, 8, 255, 0);
    repetirCirculosEnGrilla(11, 2.2, 30, 30, 255, 0);
  }
  if (mostrarGrillaBlanca) {
    dibujarGrillaBlanca(600, 0, 400, 28, 12, true);
  }
}
boolean estaSobreRombo(float x, float y, float tamX, float tamY) {
  return mouseX > x - tamX/2 && mouseX < x + tamX/2 &&
    mouseY > y - tamY/2 && mouseY < y + tamY/2;
}


void mouseClicked() {
  if (mouseX > 400 && mouseY < 400) {
    columna8Activa = !columna8Activa;
  }
  if (mouseX >= 0 && mouseY >= 0) {
    mostrarGrillaBlanca = !mostrarGrillaBlanca;
  }
}

void keyPressed() {
  if (key == 'r' || key == 'R') {

    resetearObra();
  }
}
void resetearObra() {
  columna8Activa = true;
  rotacion = 0;
  mouseSobreRombo = false;
  mostrarGrillaBlanca = false;
  escalaGrillaNegra = 0.75;
  
}
