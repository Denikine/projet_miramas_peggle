// GROUPE 4 - PEGGLE

//=================

import processing.video.*;
import gab.opencv.*;
import java.awt.*;

Capture cam;
OpenCV opencv;

//==================

PImage bg;
int scanner;
PImage floating_img;
int screen_width;
int screen_height;
PImage gun;
PImage brick_pink;
PImage surface;

//==================

void setup(){
  // affichage fullscreen 1920 ===
  //fullScreen();
  //bg = loadImage("../prod/bg.jpg");
  //w=1920;
  
  // affichage réduit 640 ===
  size(600,800);
  bg = loadImage("../prod/bg.jpg");
  screen_width = 640;
  screen_height = 800;

  
  
  // canon_base ===
  gun = loadImage("../prod/gun.png");
  
  surface = loadImage("../prod/surface.png");
  brick_pink = loadImage("../prod/brick_pink.png");
  
  
  // floating image
  floating_img = loadImage("../prod/bubble.png");
}

void draw(){
  // affichage background
  background(bg);
  
  // affichage laser ===
  stroke(226,204,0);
  line(scanner,0,scanner,height);
  // affichage canon ===
  image(gun, scanner-32, height-80, gun.width*3, gun.height*3);

  // translation de gauche à droite du canon
  scanner++;
  if (scanner > width) {
   scanner = 0;
  }
  
  
  // AFFICHAGE IMAGES  ===
    
  //affichage briques ===
  image(brick_pink, 180, 90);
  image(brick_pink, 300, 300);
  image(brick_pink, 90, 180);
  image(brick_pink, 250, 80);
  image(brick_pink, 890, 980);
 
  image(brick_pink, 90, 180);
  image(brick_pink, 250, 80);
  image(brick_pink, 890, 980);

  
  // affichage floating image ===
  image(floating_img, mouseX-floating_img.width/12, mouseY+floating_img.height/12, floating_img.width*2, floating_img.height*2);
  
  image(surface, 0,755, surface.width*6, surface.height*2);
}
