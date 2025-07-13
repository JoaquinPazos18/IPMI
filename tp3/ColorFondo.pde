color calcularColorFondo(int i, int j) {
  float cx1 = 6;
  float cy1 = 6;
  float cx2 = 13;
  float cy2 = 6;

  float d1 = dist(i, j, cx1, cy1);
  float d2 = dist(i, j, cx2, cy2);

  float delta = d2 - d1;

  float gris = map(delta, -10, 10, 0, 255);
  gris = constrain(gris, 0, 255);
  return color(gris);
}
