// Requires the GifAnimation library:
// Sketch -> Import Library -> Add Library -> search "gifAnimation" and install

import gifAnimation.*;

PImage g;
traceur[] traceurs;
GifMaker gif;

int framesToRecord = 300;
int frameCountRecorded = 0;

void settings() {
  g = loadImage("brain.png");     // change to you image here
  size(g.width, g.height, P2D); 
}

void setup(){
  background(255);
  colorMode(HSB, 360, 100, 100);

  traceurs = new traceur[0];
  for (int a = 0; a < 120; a++) {
    traceurs = (traceur[]) append(traceurs, new traceur());
  }

  gif = new GifMaker(this, "brain_tp.gif"); // change the name of the output image here
  gif.setRepeat(0);     
  gif.setQuality(10);   
}

void draw(){
  for(int j = 0; j < 400; ++j) {
    for(int a = 0; a < traceurs.length; a++){
      traceurs[a].dessine(); 
    }
  }

  if(frameCountRecorded < framesToRecord){
    gif.addFrame();
    frameCountRecorded++;
    println("Frame " + frameCountRecorded + "/" + framesToRecord);
  }
  else{
    println("Ending GIF!");
    gif.finish();
    exit();
  }
}


// ------------------------
//   CLASE TRACEUR
// ------------------------
class traceur{
  float x, y, an, v;
  float[] rang = {-0.05, 0.05};

  traceur(){
    x = random(width);
    y = random(height);
    an = random(TWO_PI);
    v = random(1.2, 1.5);
    rang[0] = random(-0.1, -0.05);
    rang[1] = random(0.05, 0.1);
  }

  void dessine(){
    an += random(rang[0], rang[1]);
    float newx = x + cos(an) * v;
    float newy = y + sin(an) * v;

    newx = constrain(newx, 0, width - 1);
    newy = constrain(newy, 0, height - 1);

    if(random(100) < 1){
      rang[0] = random(-0.1, -0.05);
      rang[1] = random(0.05, 0.1);
    }

    float angleChoisi = an;
    float couleur = brightness(g.get(int(newx), int(newy)));

    int ixe, igr;
    float col;

    for(float a = an - PI*0.3; a < an + PI*0.3; a += PI*0.15){
      ixe = int(newx + cos(a)*v);
      igr = int(newy + sin(a)*v);

      if(ixe < 0 || ixe >= width || igr < 0 || igr >= height) continue;

      col = brightness(g.get(ixe, igr));
      if(col < couleur){
        couleur = col;
        angleChoisi = a;
      }
    }

    an = angleChoisi;

    if(random(100) < 1){
      an += random(-1, 1);
    }

    stroke(
      map(dist(x, y, width/2, height/2), 0, (width+height)/2, 200, 160),
      70, 70, 
      15
    );

    line(x, y, newx, newy);

    x = newx;
    y = newy;
  }
}
