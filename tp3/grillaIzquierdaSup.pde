void dibujarGrillaNegra(float xInicio, float yInicio, float ancho, int cols, int rows) {


  float tamCelda = (ancho / cols) * escalaGrillaNegra;


  //zona oscura
  float centroX = xInicio + tamCelda * 6;  // centro aprox de la zona
  float centroY = yInicio + tamCelda * 6;

  float maxDist = dist(xInicio, yInicio, centroX, centroY);  // distancia máxima

  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      float x = xInicio + i * tamCelda;
      float y = yInicio + j * tamCelda;

      float d = dist(x, y, centroX, centroY);  // distancia al centro
      d = constrain(d, 0, maxDist);  // evita que se pase de la zona oscura


      float tamCuadro = map(d, 0, maxDist, tamCelda * 1, tamCelda * 0.7);
      float offset = (tamCelda - tamCuadro) / 2;

      noStroke();


      rect(x + offset, y + offset, tamCuadro, tamCuadro);
    }
  }
}
