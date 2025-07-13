float calcularTamañoGrilla(int cantidad, float espaciado) {
  float total = 0;
  for (int i = 0; i < cantidad; i++) {
    if (i < 6) {
      total += espaciado * 0.75;
    } else {
      total += espaciado;
    }
  }
  return total;
}
