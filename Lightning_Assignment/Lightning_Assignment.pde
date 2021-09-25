int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
int randomX;
int randomY;


void setup() {
  size(500,500);
  background (2,7,70);
  strokeWeight(5);
}


void draw() {
  // yellow stroke
 stroke ((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  while (endX < 500){
    randomX = (int)(Math.random()*10);
    randomY = (int)((Math.random()*19)-9);
    endX = startX + randomX;
    endY = startY + randomY;
    line (startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}


void backgroundBolt(){
   strokeWeight (10);
   stroke (255,255,100,50);
   while (endX < 500){
     endX = startX + randomX;
     endY = startY + randomY;
     line (startX, startY, endX, endY);
     startX = endX;
     startY = endY;
  }
}
  

void mousePressed() {
 startX = 0;
 startY = 150;
 endX = 0;
 endY = 150;
}
