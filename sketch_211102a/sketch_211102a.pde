float x, y;
float z;
float x2, y2, z2;
float d, d2;
int kaisu;
float counter;
boolean isPlaying;
PImage photo;
boolean gameover;

void setup() {
  size(800, 600);
  photo=loadImage("77656129.jpg");
  x=400;
  y=200;
  z=100;
  kaisu=0;
  background(255);
  noStroke();
  fill(255, 0, 0);
  circle(x, y, z);
  textSize(70);
  PFont font=createFont("Meiryo", 50);
  textFont(font);
  text(kaisu, 20, 50);
  text("スタート！", 300, 300);
  isPlaying=false;
  gameover=false;
  cursor(photo, 16, 16);
}

void draw() {

  if (isPlaying) {
    stroke(0);
    strokeWeight(5);
    line(0, 560, counter*(800/800), 560);
    counter=counter+1;


    if (counter==800) {
      gameover=true;
      background(255);
      textSize(200);
      text(kaisu, 100, 300);

      text("回", 400, 300);
    }
  }
}

void mousePressed() {
  d=dist(x, y, mouseX, mouseY);
  d2=dist(x2, y2, mouseX, mouseY);

  if (gameover==false) {
    if (isPlaying) {
      if (d2<50) {
        noStroke();
        kaisu=kaisu+1;
        fill(255);
        rect(0, 0, 800, 600);

        x2=random(50, 650);
        y2=random(50, 550);
        z2=random(50, 100);
        fill(random(255), random(255), random(255));
        noStroke();
        circle(x2, y2, z2);
        textSize(70);
        text(kaisu, 20, 60);
      }
    } else {

      if (d<50) {
        noStroke();
        isPlaying=true;
        fill(255);
        rect(0, 0, 800, 600);
        x2=random(50, 650);
        y2=random(50, 550);
        z2=random(50, 100);
        fill(random(255), random(255), random(255));
        noStroke();
        circle(x2, y2, z2);
      }
    }
  }
}





void keyPressed() {
  if (key==ENTER) {
    isPlaying=false;
    gameover=false;
    background(255);
    noStroke();
    x=400;
    y=200;
    z=100;
    kaisu=0;
    counter=1;
    circle(x, y, z);
     text(kaisu, 20, 50);
  text("スタート！", 300, 300);
  }
}
