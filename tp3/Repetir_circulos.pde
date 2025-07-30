void repetirCirculosEnGrilla(float tamCelda, float espacio, int cols, float offsetColumnas, float relleno, float linea) {
  for (int i = 0; i < cols; i++) {
    // repite cada 3 columnas
    if (i == 8 || i == 12 || i == 17 || i == 21 || i == 25) {

      float x = (i + offsetColumnas) * (tamCelda + espacio); //posX de las columnas
      float y = 230;
      float borde = 1;
      float difEjeX = 0;

      if (i == 8) {

        borde = 5;
      } else if (i == 12) {
        borde = 3;
        difEjeX = 4;
      } else if (i == 17) {
        borde = 2.5;
        difEjeX = -4;
      } else if (i == 21) {
        borde = 2;
      } else if (i == 25) {
        noStroke();
        difEjeX = 3;
        tamCelda = 13.7;
      }
      fill(relleno);
      stroke(linea);


      // Dibuja una columna de 6 círculos
      dibujarCirculos(x + difEjeX, y, tamCelda, 6, tamCelda * 1.6, borde, relleno, linea);
    }
  }
}
