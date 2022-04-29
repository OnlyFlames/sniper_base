// A simple sniper code

//import processing.sound.*;
//SoundFile shooter;
//SoundFile reload;

int centerX = 250;
int centerY = 250;
int fullAmmo = 7;
int ammo = fullAmmo;
void setup()
{
  size(500, 500);
  //shooter = new SoundFile(this, "shoot.mp3");
  //reload = new SoundFile(this, "reload.mp3");
}

void draw()
{
  background(#753E17);
  if(ammo < 1){
   text("RELOAD with MOUSE RIGHT CLICK", width/4, height - 50); 
  }
  textSize(25);
  text(ammo, 450, 50);
  
  centerX = mouseX;
  centerY = mouseY;
   ellipse( centerX, centerY, 300, 300);
  //left-right line
      //x1,  y1,  x2,  y2
  line(centerX-150, centerY, centerX+150, centerY);
  
  //up-down line
  line(centerX, centerY-150, centerX, centerY+150);
  
  noStroke();
  ellipse( centerX, centerY, 20, 20);
  
  stroke(1);
  strokeWeight(4);
  
  
 }
 
 void mousePressed(){
   if(mouseButton == LEFT){
    if(ammo > 0){
      //shooter.play();
      ammo = ammo-1;
      
    } 
   } 
   
   if(mouseButton == RIGHT){
     //reload.play();
    ammo = fullAmmo;
   } 
 }
 
 
 
