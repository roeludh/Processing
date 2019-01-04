float windowBreedte;
float windowHoogte;
float windowX;
float windowY;
      
boolean homeScreen = false;
boolean SchermEenClick = false;
int startHoogte = 100;
int startBreedte = 200;
int startX;
int startY;
int level;
int marge = 100;
   
    
void setup(){
 size(800,800);
 windowBreedte = (width / 100) * 90;
 windowHoogte = (height / 100) * 90;
 windowX = (width / 100) * 5;
 windowY = (height / 100) * 5;
 memory = loadImage("memory.jpg");
}
    
void draw(){
 rect(windowX, windowX, windowBreedte, windowHoogte);
      
  if(level == 0) {
    drawHomeScreen();
  } else if(level == 1) {
    drawInstellingen();
  } else{
    drawHetSpel();  
  }
}
    

void mousePressed(){
  if (homeScreen == false) {
    homeScreenClick();
  } else {
    //SchermEenClick();
  }
  
}


void tekenStartKnop(){
 //Instellingen voor de uiterlijk van de "verder" knop
 fill(#BFBFBF);
 rect((windowBreedte/3)+50,windowHoogte-60,startBreedte,startHoogte); 
 fill(0);
 textSize(35);
 strokeWeight(4);
 text("Verder", (windowBreedte/3)+90, windowHoogte);
 
 if( mouseX >= (windowBreedte/3)+20
     && mouseX <= (windowBreedte/3)+20 + startBreedte
     && mouseY >= windowHoogte-60
     && mouseY <= windowHoogte-60 + startHoogte)
     { 
       stroke(0);
     }
} 
