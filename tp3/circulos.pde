void dibujarCirculos(float xInicio, float yInicio, float tamCelda, int cantidad, float espacio,float borde,float relleno,float linea) {


  for (int i=0; i< cantidad; i++) {
    float x = xInicio + tamCelda / 2;
    float y = yInicio + i * (tamCelda + espacio) + tamCelda / 2;

    fill(relleno);
    stroke(linea);
    strokeWeight(borde);
    ellipse(x, y, tamCelda, tamCelda);

    float aumento = map(i, 0, cantidad - 1, 0.1, 0); //de 10 a 100% tamaño
    float diamInterior = tamCelda * aumento;


    fill(0);
    noStroke();
    ellipse(x, y, diamInterior, diamInterior);
  }
}
