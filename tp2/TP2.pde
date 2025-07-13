PImage img;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PImage img7;

PFont font;
PFont font2;
PFont font3;
PFont font4;
PFont font5;
PFont font6;

String texto1 = "Imaginemos que los colores pudieran hablar, que cada vez que vestimos una prenda, diseñamos un cartel o elegimos la pintura de una habitación, estuviéramos enviando un mensaje emocional sin darnos cuenta.";
String texto2 = "Así arranca Eva Heller su recorrido: con la certeza de que los colores no son casuales, ni meramente estéticos sino que son herramientas emocionales cargadas de historia, cultura y psicología.";
String texto3 ="Desde su mirada como socióloga y psicóloga, Heller se propuso descubrir qué sentimos frente a cada color y por qué.Para eso realizó una investigación con más de dos mil personas, conectando colores con sentimientos, palabras y situaciones.";
String texto4 ="En su libro, cada color es presentado como un personaje con su propia historia. El rojo, por ejemplo, es pasión y peligro; puede seducir o advertir. El azul transmite confianza y seriedad, por eso es tan común en bancos o redes sociales. El amarillo es alegría, pero también puede rozar la falsedad o la traición. Y así, color por color, Heller va desmenuzando lo que evocan en nuestro inconsciente colectivo.";
String texto5 = "Pero el libro no se queda en lo emocional. También explora cómo los colores se usan de forma estratégica en el diseño, la publicidad, la política, la moda o el cine.En definitiva, La psicología del color es una invitación a mirar de otra forma lo que nos rodea. A entender que el color no solo embellece, sino que persuade, emociona y convence.";
String texto6 = "Eva Heller (1948-2008) estudió sociología y psicología en la Universidad Libre de Berlín. Experta en teoría del color, escribió diversos libros sobre el color y sus implicaciones culturales, entre ellos Psicología del color que ya se ha convertido en un clásico en la materia, y diversas publicaciones para niños, como La verdadera historia de los colores (2006), que fue seleccionado para la lista de honor del Premio Alemán al Libro Juvenil.";

float posYtext = 200;
float posXtext = 50;
float tam = 20;
float endBoard = 600;


int posX = 0;
int posY = -480;
int ancho = 500;
int dir = 1;
int slideActual = 1;
int vel = 1;



void setup() {
  font = loadFont("BaskOldFace-48.vlw");
  font2 =loadFont("ImprintMT-Shadow-48.vlw");
  font3 =loadFont("Rockwell-Italic-48.vlw");
  font4 =loadFont("YuGothicUI-Semilight-48.vlw");
  font5 =loadFont("Verdana-Italic-48.vlw");
  font6 =loadFont("TwCenMT-Regular-48.vlw");
  img = loadImage("portada.jpg");
  img2 = loadImage("slide2.jpg");
  img3 = loadImage("slide3.jpg");
  img4 = loadImage("slide4.jpg");
  img5 = loadImage("slide5.jpg");
  img6 = loadImage("slidefin.jpg");
  img7 = loadImage("button-reset.png");
  size(640, 480);
  textAlign(LEFT);
  textFont(font);
};
void draw() {
  Slide1();
  Slide2();
  Slide3();
  Slide4();
  Slide5();
  slideFin();
};
