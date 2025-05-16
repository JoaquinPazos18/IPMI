void Slide1() {
  //slide1 carga imagen sola
  if (posYtext > mouseX) {
    tint(150);
    image(img, 0, 0, 640, 480);
    posYtext = 200;
  }
  if (posYtext < mouseX) {   //carga img y txt
    tint(150);
    image(img, posX, 0, 640, 480);
    noFill();
    textFont(font);
    text(texto1, 10, posYtext, 500, ancho);
    posYtext = posYtext - 2;
  }
  if (posYtext < -ancho) {
    slideActual = 2;
  }
};

void Slide2() {
  //slide2
  if (posYtext < posY) {
    tint(150);
    image(img2, 0, 0, 640, 480);
    noFill();
    textFont(font2);
    text(texto2, posXtext-20, 0, 550, ancho);
    posXtext = posXtext + 2;
  }
  if (posXtext > width + 50) {
    slideActual = 3;
  }
};

void Slide3() {
  //slide3
  if (posXtext > ancho) {
    tint(150);
    image(img3, 0, 0, 640, 480);
    textFont(font3);
    textSize(tam);
    text(texto3, posX, 0, 550, ancho);
    tam = tam + 0.1;
  }
  if (tam > 40) {
    slideActual = 4;
  }
};

void Slide4() {
  //slide 4
  if (tam > 40) {
    tint(150);
    image(img4, 0, 0, 640, 480);
    noFill();
    textFont(font4);
    textSize(30);
    text(texto4, endBoard, 0, 550, 640);
    tam = tam -0.1;
    endBoard = endBoard - 4;
  }
};
void Slide5() {
  //este texto hay que hacerlo rebotar

  if (endBoard < 10) {
    tint(150);
    image(img5, 0, 0, 640, 480);
    noFill();
    textFont(font5);
    textSize(30);
    text(texto5, posX, 0, 550, ancho);
    //rebotin
    posX = posX + dir;
    dir = dir++;
    if (posX == 100) {
      dir--;
    } //aca estoy controlando el rebote
    if (posX == 0) {
      dir= 0;
    }
    if (endBoard < 0) {
      slideActual = 5;
    }
  };
}

void slideFin() {
  //aca cargamos la imagen final con una reseña del autor y el boton de reset
  if (dir == 0 && posX == 0) {
    image(img6, 0, 0, 640, 480);
    image (img7, 500, 350, 100, 120); //boton de reset
    noFill();
    textFont(font6);
    textSize(20);
    text(texto6, 0, 250, 550, ancho);
  }
  if (dir == 0 && posX == 0) {
    slideActual = 6;
  }
};
void reiniciarTodo() {
  // reinicia TODAS las variables que controlan animaciones

  posYtext = 200;
  posXtext = 0;
  posX = 0;
  posY = 0;
  endBoard = width;
  tam = 20;
  dir = 1;

  // Volver a la primera slide
  slideActual = 1;
};

void mouseClicked() {
  if (slideActual == 6) {
    // verifica si el clic está dentro de la imagen del botón
    if (mouseX >= 500  && mouseY >= 350 )
      reiniciarTodo();  // reiniciador
  }
}
