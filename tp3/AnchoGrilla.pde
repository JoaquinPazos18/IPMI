float calcularAnchoGrilla(int cols, float espaciado) {
  float ancho = 0;
  for (int i = 0; i < cols; i++) {
    if (i < 6) {
      ancho += espaciado * 0.75;
    } else {
      ancho += espaciado;
    }
  }
  return ancho;
}
