void dibujarRombos(float xInicio, float yInicio, float ancho, int cols, int rows, float espaciado) {


  float tamCelda = ancho / cols;
  float anchoRombo = tamCelda * 0.4;
  float altoRombo = tamCelda * 0.3;


  mouseSobreRombo = false;


  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      float x = xInicio + i * espaciado;
      float y = yInicio + j * espaciado;


      if (estaSobreRombo(x, y, anchoRombo * 2, altoRombo * 2)) {
        mouseSobreRombo = true;
      }
    }
  }

  if (mouseSobreRombo) {
    rotacion += 0.05;
    if (rotacion > TWO_PI) rotacion -= TWO_PI;
  }
  
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      float x = xInicio + i * espaciado;
      float y = yInicio + j * espaciado;




      pushMatrix();
      translate(x, y);
      rotate(rotacion - PI/4);
      stroke(255);
      strokeWeight(4);
      fill(0);

      quad(-anchoRombo, 0, 0, -altoRombo, anchoRombo, 0, 0, altoRombo);
      popMatrix();
    }
  }
}
