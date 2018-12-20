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

void setup()
{
  size(800, 600, P3D );
  minim = new Minim(this);
  input = minim.getLineIn();
  background(0);
  // CREATE A NEW SPOUT OBJECT
  spout = new Spout(this);

  spout.createSender("DB Bars");

}

void draw(){
  int posx = 10;
  int posx_2 = 20;
  
  rect(0,0,800,600);
  for(int i = 0; i < input.bufferSize() - 1; i++)
    {
 
    }
  for(int i = 0; i < input.bufferSize() - 1; i++)
    {
      //fill(255);
      for (int b =0; b< 1; b++){
        rect(posx_2,input.right.get(i)*600,10,input.left.get(i)*300);
        fill(input.right.get(i)*200,input.left.get(i)*300,input.left.get(i)*200);
        
        posx_2 = posx_2 + 1;
      }
      
      pushMatrix();
      for (int a =0; a< 1; a++){
        rect(posx,input.left.get(i)*600,input.right.get(i)*20,input.left.get(i)*300);
        fill(input.left.get(i)*200,0,0);
        stroke(input.left.get(i)*100);
        posx = posx + 2;
      }
      popMatrix();
    }

    spout.sendTexture();
}
