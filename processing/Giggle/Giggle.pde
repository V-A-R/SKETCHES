import spout.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Spout spout;

Minim minim;
AudioPlayer player;
AudioInput input;
 PFont f;
void setup()
{
  size(800, 600, P3D);
  minim = new Minim(this);
  input = minim.getLineIn();
  f = createFont("Arial",25,true);   
  background(125,125,125);
  
   spout = new Spout(this);

  spout.createSender("Giggle");

}
 
void draw(){

  
    //background(255,255,255);
    background(0);
 
 
  stroke(255);
 
  float a = random(400);
  float b = random(400);
  float c = random(400);
  float d = random(400);
  
   /*drawline(c,d);*/
  /*drawcircle(1000,400,b,a);*/
  texteprint(a,b);
  drawrectangle(d,c,b,a);
  drawrectangle(a,b,c,d);
  drawrectangle2(a,b,c,d);
 
  spout.sendTexture();
}

void drawrectangle(float xloc,float yloc, float width, float height){
   for(int i = 0; i < input.bufferSize() - 1; i++)
  {
    rect(input.left.get(i)*xloc,yloc,input.left.get(i)*width,input.left.get(i)*height);
    fill(input.left.get(i)*200,input.right.get(i)*200,50);
     noStroke();
  }
  
}

void drawrectangle2(float xloc,float yloc, float width, float height){
   for(int i = 0; i < input.bufferSize() - 1; i++)
  {
    rect(xloc,yloc,input.left.get(i)*width,input.left.get(i)*height);
    fill(input.left.get(i)*300,input.right.get(i)*200,50);
     noStroke();
  }
  
}

void drawcircle(float xloc,float yloc, float width, float height){
   for(int i = 0; i < input.bufferSize() - 1; i++)
  {
    ellipse(input.left.get(i)*xloc,yloc,input.left.get(i)*width,input.left.get(i)*height);
    fill(input.left.get(i)*200,input.right.get(i)*200,300);
     noStroke();
  }
  
}

void drawline(float width, float height){
   for(int i = 0; i < 10 - 1; i++)
  {
    float a = random(800);
    float b = random(600);
    line(a,b,input.left.get(i)*width,input.left.get(i)*height);
    stroke(0);
    fill(input.left.get(i)*200,input.right.get(i)*200,0);
  }
  
}


void texteprint(float xloc,float yloc){
   for(int i = 0; i < 10 - 1; i++)
  {
    float a = random(800);
    float b = random(600);
    float number = random(1000);
    String sy = str(number); 
    text(sy,a,b);
    fill(255,255,255,input.left.get(i)*200);
    
  }
  
}