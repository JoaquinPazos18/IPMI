PImage img;

void setup(){
size(800,400); //tamaño de pantalla
img = loadImage("milton.jpg");
};


void draw(){
image(img,400,0,400,400);
noFill();
stroke(1,81,22);
strokeWeight(10);
ellipse(26,26,200,150);//medio circulo de la punta
noStroke();
fill(250,0,0);
rect(0,0,200,20); //rectangulo rojo
fill(255,0,0);
rect(0,20,20,100);//rectangulo rojo vertical
fill(1,81,22);
rect(180,0,50,20);//cuadradito verde sup.
fill(250, 165, 66);
rect(200,0,200,20);//rectangulo amarillo
fill(250, 165, 66);
rect(400,0,20,230);//rectangulo amarillo vertical
fill(1,81,22);
rect(0,120,20,30);//cuadradito verde izq.
fill(237, 112, 49);
rect(0,150,20,80);//rectangulo naranja izq.
fill(2,81,27);
rect(0,250,400,220);//rectangulo verde fondo
fill(1,49,90);
rect(0,230,20,250);//rectangulo azul izq.
rect(20,380,400,20);//rectangulo azul horiz.
rect(400,230,20,150);//rectangulo azul der.
fill(226, 226, 226);
rect(200,180,30,150);//pilar central
fill(226,226,226);
rect(190,130,50,50);//punta del pilar
noFill();
stroke(3,139,164);
ellipse(250,90,90,60);//anillo celeste
stroke(228,71,24);
ellipse(300,80,90,80);//anillo rojo
noFill();
stroke(240, 160, 59);//anillo amarillo inf.
ellipse(215,280,80,50);
stroke(255,0,0);
rotate(50);
ellipse(135,260,80,50);//anillo rojo inf.

};
