import ddf.minim.*;

Minim minim;
AudioPlayer song;
float x;
float y;
float sebx;
float seby;
float clicked = 0;
PImage background;
PImage man;
boolean is_on; 
String irany;
int meretx;
int merety;
//background(1200, 918);

//image (man, 540, 550, 80, 161);
//image("man.png");

//  frameRate(12);

//void right() {
// x=x+1;
//}
//void left() {
// x=x-1;
//}
void setup() {
  size (1200, 918);
  background=loadImage("background.jpg");
  man=loadImage("man.png");
  x=540;
  y=550;
  is_on = false; 
  minim = new Minim(this);
  song = minim.loadFile("jacko.mp3");
  sebx = 3;
  seby = -3;
  irany="jobbra";
  meretx=80;
  merety=161;
}
void mouseClicked() {
  clicked+=1;
  song.play();
  is_on=true;
  //ha az irany eddig jobbra volt, akkor balra, egyebk legyen jobbra
   if (irany=="jobbra") {
      irany="balra";  
    }  
     else if (irany=="balra"){
    irany="elore";
    }
     else if (irany=="elore"){
    irany="hatra";
    }
     else if (irany=="hatra"){
    irany="jobbra";
    }
    // ha az irany jobbra, akkor jobbra mozgunk, egyebk balra
  
}
void draw() {
  background(background);
  if (is_on) {

    y=550;
    if (irany=="jobbra") {
      x=x+1;  
    }  
    if (irany=="balra"){
    x=x-1;
    }
     if (irany=="elore"){
    meretx+=1;
    merety+=1;
    }
     if (irany=="hatra"){
    meretx-=1;
    merety-=1;
    }
    // ha az irany jobbra, akkor jobbra mozgunk, egyebk balra
  }
  image(man, x, y, meretx, merety);
  //x = x+sebx;
  //y = y+seby;
  //  image(man, mouseX, mouseY, 80, 161);
  // image(man, x, y, 80, 161);
  // image (man, 540, 550, 80, 161);
  //if (mouseClicked) {
  //sebx = ;   
  //seby = ;
  // if (x > 540) {
  //  x = x+1;
  // y = 550;
  //  }
  // if (y > 550) {
  //   y = y+1;
  //  x = x + 1;
  //  }
  // x=x+1;
}