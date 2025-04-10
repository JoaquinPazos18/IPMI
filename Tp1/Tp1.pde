PImage img;

void setup(){
size(800,400); //tamaño de pantalla
img = loadImage("milton.jpg");
};


void draw(){
image(img,400,0,300,400);
noFill();
stroke(1,81,22);
ellipse(26,26,150,150);//medio circulo de la punta
ellipse(15,15,140,140);
fill(250,0,0);
rect(0,0,115,20); //rectangulo rojo
fill(255,0,0);
rect(0,20,20,100);//rectangulo rojo vertical
fill(1,81,22);
rect(115,0,30,20);//cuadradito verde sup.
fill(250, 165, 66);
rect(145,0,120,20);//rectangulo amarillo
fill(250, 165, 66);
rect(260,0,20,230);//rectangulo amarillo vertical
fill(1,81,22);
rect(0,120,20,30);//cuadradito verde izq.
fill(237, 112, 49);
rect(0,150,20,80);//rectangulo naranja izq.
fill(2,81,27);
rect(0,250,280,120);//rectangulo verde fondo
fill(1,49,90);
rect(0,230,20,150);//rectangulo azul izq.
rect(20,360,240,20);//rectangulo azul horiz.
rect(260,230,20,150);//rectangulo azul der.
fill(226, 226, 226);
rect(125,180,30,150);//pilar central
fill(226,226,226);
rect(115,130,50,50);//punta del pilar
noFill();
stroke(3,139,164);
ellipse(150,90,90,60);//anillo celeste
stroke(228,71,24);
ellipse(200,80,90,80);//anillo rojo
stroke(0);
noFill();
stroke(240, 160, 59);//anillo amarillo inf.
ellipse(140,280,80,50);
stroke(255,0,0);
rotate(50);
ellipse(80,240,80,50);//anillo rojo inf.
};
