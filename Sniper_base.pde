import processing.sound.*;

SoundFile shooter;
SoundFile reload;

int centerX = 250;
int centerY = 250;
int ammo = 15;
void setup()
{
  size(500, 500);
  shooter = new SoundFile(this, "shoot.mp3");
  reload = new SoundFile(this, "reload.mp3");
}

void draw()
{
  background(#753E17);
  textSize(25);
  text(ammo, 450, 50);
  
  centerX = mouseX;
  centerY = mouseY;
   circle( centerX, centerY, 300);
  //left-right line
      //x1,  y1,  x2,  y2
  line(centerX-150, centerY, centerX+150, centerY);
  
  //up-down line
  line(centerX, centerY-150, centerX, centerY+150);
  
  noStroke();
  circle( centerX, centerY, 20);
  
  stroke(1);
  strokeWeight(4);
  
  //if(mousePressed){
  //  ammo = ammo-1;
  //  println(ammo);
  //}
  //delay(1000);
 }
 
 void mousePressed(){
   if(mouseButton == LEFT){
     shooter.play();
    ammo = ammo-1;
   } 
   
   if(mouseButton == RIGHT){
     reload.play();
    ammo = 15;
   } 
 }
 
 
 
