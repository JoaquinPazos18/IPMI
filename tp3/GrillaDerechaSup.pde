void dibujarGrillaBlanca(float xInicio, float yInicio, float ancho, int cols, int rows, boolean espejo) {

  float tamCelda = ancho / cols;

  // Centro de espejo
  float centroX = xInicio + tamCelda * 7;
  float centroY = yInicio + tamCelda * 7;

  float maxDist = dist(xInicio, yInicio, centroX, centroY);

  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      float x = xInicio + i * tamCelda;
      float y = yInicio + j * tamCelda;

      float d = dist(x, y, centroX, centroY);
      d = constrain(d, 0, maxDist);

      float tamCuadro;

      if (espejo) {
        
        tamCuadro = map(d, 0, maxDist, tamCelda * 0.9, tamCelda * 0.4); //invierte mas grande por mas chico
      }else {
        
        tamCuadro = map(d, 0, maxDist, tamCelda * 0.4, tamCelda * 0.9);
      }

      float offset = (tamCelda - tamCuadro) / 2;

      noStroke();
      fill(255); 
      rect(x, y, tamCelda, tamCelda);
      fill(0); 
      rect(x + offset, y + offset, tamCuadro, tamCuadro);
    }
  }
}
