PImage backing;
PImage memory;
PImage[] voorkant;

int aantalKaarten = 32;
float kaartenX = windowX+10;
float kaartenY= windowY + 10;
float breedteKaarten = 75;
float kaartenHoogte = 100;
int arrayNummer;
int kaarten[][] = new int[0][0];

boolean one_showing = false;
boolean two_showing = false;
int aantalKlikken = 0;

boolean beurtSpelerEen;
boolean beurtSpelerTwee;
boolean gelijkeKaarten = false;
int kaartAchterkant = 0;
    
String[] afbeeldingen;
      
void drawHetSpel(){ 
  
 background(#BFBFBF); 
 fill(#FF8C00);
 stroke(0);
 rect(windowX, windowY, windowBreedte, windowHoogte);
 backing = loadImage( "kaart0.jpg");
          
 spelerInformatie();
 kaartenMaken(); 

}
      
void kaartenMaken(){
 float kaartenX = windowX + 25;
 float kaartenY= windowY + 10;
 float reset = kaartenX;
 aantalKaarten = sliderPositie + 12;
 voorkant = new PImage[aantalKaarten];  
 int afbeelding;
 kaarten = new int [aantalKaarten][2];
 
 afbeeldingen = new String[]  {
      "kaart1.jpg",
      "kaart2.jpg",
      "kaart3.jpg",
      "kaart4.jpg",
      "kaart5.jpg",
      "kaart6.jpg",
      "kaart7.jpg",
      "kaart8.jpg",
      "kaart9.jpg",
      "kaart10.jpg",
      "kaart11.jpg",
      "kaart12.jpg",
      "kaart13.jpg",
      "kaart14.jpg",
      "kaart15.jpg",
      "kaart16.jpg"};

for(int n = 0; n < 2; n++) {
for(int i = 0; i < kaarten.length/2; i++) {
  afbeelding = int(random(1,kaarten.length/2-i) - 1);
  voorkant[i + kaarten.length/2 * n] = loadImage(afbeeldingen[afbeelding]);
  afbeeldingen[afbeelding] = afbeeldingen[kaarten.length/2 -1- i];
}
}

 if (aantalKaarten%2==0 && kaartAchterkant == 0) {   
   gelijkeKaarten = true;
 for(int i = 0; i < aantalKaarten; i++){
      image(backing, kaartenX, kaartenY,75,100);
      kaarten[i][0] = int(kaartenX);
      kaarten[i][1] = int(kaartenY);
      
      kaartenX+=85;
        
    if(kaartenX>=windowBreedte){
       kaartenY+=110; 
       kaartenX= reset;
      }
    if(kaartenY >= windowHoogte && kaartenX >= windowBreedte){
      
      }
  }   
  if(mouseX > kaartenX && mouseX <= kaartenX + 75 && mouseY > kaartenY && mouseY <= kaartenY + 100){
    
    noFill();
    stroke(0,0,255);
    strokeWeight(5);
    rect(kaartenX, kaartenY, 75, 100);
    
  }else{
    stroke(0);
  }
}
 
else{
  gelijkeKaarten = false;
  fill(#BFBFBF);
  rect(width/2-100, height/2, 200, 100);
  fill(0);
  text("Oneven Kaarten, ", width / 2 - 75, height / 2 + 30);
  text("Ga terug! ", width / 2 - 50, height / 2 + 50);
  if(mousePressed && mouseX > width/2-100 && mouseX <= width/2 +100 && mouseY > height/2 && mouseY <= height/2 + 100){
    drawInstellingen();
    level = 1;
  }
 }

}  

void spelerInformatie(){
  float spelerEenX =windowX+( windowX * 2);
  float spelerY = windowHoogte - 110;
  float spelerBreedte = 200;
  float spelerHoogte = 100;
  float spelerTweeX = spelerEenX + (windowBreedte / 2);
  
  
  fill(#BFBFBF);
  noStroke();
  rect(spelerEenX, spelerY, spelerBreedte,spelerHoogte);
  rect(spelerTweeX, spelerY, spelerBreedte,spelerHoogte);
  
  fill(0);
  textSize(20);
  text("Speler 1: ", spelerEenX, spelerY);
  text("Speler 2: ", spelerTweeX, spelerY);
  text("Paren: ", spelerEenX, spelerY+50);
  text("Paren: ", spelerTweeX, spelerY+50);
}

void mouseClicked(){
  boolean kaartDraaien = false; 
  
  for(int i = 0; i < kaarten.length; i++){
    if(mouseX > kaarten[i][0] && mouseX < kaarten[i][0] + breedteKaarten && mouseY > kaarten[i][1] && mouseY < kaarten[i][1] + kaartenHoogte){
      image(voorkant[i], kaarten[i][0],kaarten[i][1], breedteKaarten, kaartenHoogte);
      kaartDraaien = true;
    }
  }
  println(kaartDraaien);
}

/*

     
*/
