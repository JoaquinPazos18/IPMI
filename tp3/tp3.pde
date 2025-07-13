PImage obraOriginal;
float espaciado = 20;
float anguloRotacion = radians(15);
boolean inclinacionDerecha = true;
boolean hoverGrilla = false;


void setup() {
  size(800, 400);
  obraOriginal = loadImage("supernovae.jpg");
  noStroke();
}

void draw() {
  background(255);
  image(obraOriginal, 0, 0, 400, 400);
  //verificacion posicion del mouse
  hoverGrilla = (mouseX >= 400 && mouseX < 800 && mouseY >= 0 && mouseY < 400);

  dibujarGrillaOpArt(400, 0, 20, 20, espaciado, hoverGrilla);
};

void keyPressed() {
  if (keyCode == UP) {
    espaciado += 2;
  } else if (keyCode == DOWN) {
    espaciado = max(5, espaciado - 2);
  } else if (key == 'r' || key == 'R') {
    inclinacionDerecha = !inclinacionDerecha;
    anguloRotacion = radians(inclinacionDerecha ? 15 : -15);
  } else if (key == 'x' || key == 'X') {
    reiniciarParametros();
  }
}
void reiniciarParametros() {
  espaciado = 400/(6*0.75 + 14);
  inclinacionDerecha = true;
  anguloRotacion = radians(15);
}
