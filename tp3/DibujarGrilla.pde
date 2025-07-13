void dibujarGrillaOpArt(float x0, float y0, int cols, int rows, float espaciado, boolean modoColorAlternativo)
{
  // Centros de distorsión
  float cx1 = 6;
  float cy1 = 6;
  float cx2 = 13;
  float cy2 = 6;

  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {

      // Región superior izquierda más apretada
      float espaciadoLocal = espaciado;


      // Cálculo acumulado de posición X (columna i)
      float x = x0;
      for (int k = 0; k < i; k++) {
        if (k < 6) {
          x += espaciado * 0.75;
        } else {
          x += espaciado;
        }
      }

      // Cálculo acumulado de posición Y (fila j)
      float y = y0;
      for (int k = 0; k < j; k++) {
        if (k < 6) {
          y += espaciado * 0.75;
        } else {
          y += espaciado;
        }
      }



      float d1 = dist(i, j, cx1, cy1);
      float d2 = dist(i, j, cx2, cy2);

      float delta = d2 - d1;

      // variacion del cuadrado
      float tam = map(delta, -10, 10, 4, 16);
      tam = constrain(tam, 2, espaciado * 0.9);

      if (modoColorAlternativo) {
        fill(0, 0, 255);  // Azul
      } else {
        fill(0);          // Negro
      }

      rectMode(CENTER);

      if (j == 7) {
        // fila deformada: rectángulos verticales
        float ancho = tam * 0.5;
        float alto = tam * 1.5;
        // Centro del rectángulo
        float cx = x + espaciado / 2;
        float cy = y + espaciado / 2;

        // Alternar ángulo de rotación
        float angulo = anguloRotacion;

        pushMatrix();
        translate(cx, cy);   // Mover al centro del rectángulo
        rotate(angulo);      // Aplicar rotación
        rectMode(CENTER);    // Dibujar desde el centro
        rect(0, 0, ancho, alto);
        rectMode(CORNER);    // Volver a modo original
        popMatrix();
      } else {
        // Definir color de fondo del cuadrado
        if (j >= 11 && (i == 2 || i == 3)) {
          if (modoColorAlternativo) {
            fill(255, 0, 0);  // Rojo
          } else {
            fill(255);        // Blanco
          }
          ;  // Blanco para que el círculo negro contraste
        } else {
          fill(0);    // Negro para el resto
        }
        // Efecto de iluminación cerca del mouse
        float centroX = x + espaciadoLocal / 2;
        float centroY = y + espaciadoLocal / 2;
        float distanciaMouse = dist(mouseX, mouseY, centroX, centroY);
        // Efecto de iluminación cerca del mouse (solo en hover)
        if (distanciaMouse < espaciadoLocal * 0.4 && modoColorAlternativo) {
          fill(255, 255, 100);  // Amarillo claro
        } else {
          // Lógica de color normal (solo cambiar algunos cuadros en hover)
          if (j >= 11) {
            if (i == 2 || i == 3) {
              fill(modoColorAlternativo ? color(255, 0, 0) : color(255));  // Rojo o blanco
            } else if (i == 9 || i == 10 || i == 11) {
              fill(modoColorAlternativo ? color(180, 0, 180) : color(127));  // Violeta o gris
            } else if (i == 15 || i == 16) {
              fill(0);  // Siempre negro
            } else {
              fill(0);  // Otros cuadros inferiores = negro
            }
          } else {
            fill(0);  // Todos los demás cuadros = negro
          }
        }


        // Dibujar el cuadrado
        rect(x + espaciadoLocal / 2, y + espaciadoLocal / 2, tam, tam);



        if (j >= 11) {
          float radio = calcularRadioCirculo(j);


          // Circulos blancos

          if (i == 2 || i == 3) {
            if (modoColorAlternativo) {
              fill(0, 0, 255);  // Azul
            } else {
              fill(0);          // Negro
            }
            ;
            ellipse(x + espaciado / 2, y + espaciado / 2, radio, radio);
          }


          // Circulos intermedios gris medio
          if (i == 9 || i == 10 || i == 11) {
            if (modoColorAlternativo) {
              fill(180, 0, 180);  // Violeta
            } else {
              fill(127);          // Gris medio
            }

            ellipse(x + espaciado / 2, y + espaciado / 2, radio, radio);
          }

          // Círculos negros
          if (i == 15 || i == 16) {
            float radioNegro = radio * 1.5;
            if (modoColorAlternativo) {
              fill(0, 0, 255);  // Azul
            } else {
              fill(0);          // Negro
            }
            ;
            ellipse(x + espaciado / 2, y + espaciado / 2, radioNegro, radioNegro);
          }
        }
      }
    }
  }
}
