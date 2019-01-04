  float sliderX = 150;
  float sliderEenY = 100;
  float sliderBreedte = 500;
  float sliderHoogte = 30;

  int margeSliderTekst = 5;
  int tekstMargeTien = 10;

  int minimaleMarge = 12;

  boolean sliderKlik1 = false;

  int sliderPositie;

  int nPosities = 21;

  float blokjeBreedte = sliderBreedte / nPosities;
  
void drawInstellingen(){
  background(#BFBFBF);
  stroke(0);
  tekenStartKnop();
  tekenSliders();
}

// in deze methode wordt het klikken op de knop bepaald
void schermEenClick() {
  if(mouseX >= startX-startHoogte
     && mouseX <= startX + startBreedte
     && mouseY >= startY
     && mouseY <= mouseY + startHoogte)
     {
       drawHetSpel();
     }

}

void tekenSliders(){
  
  if(mouseX>sliderX
    && mouseX <= sliderX+sliderBreedte
    && mouseY > sliderEenY
    && mouseY <= sliderEenY + sliderHoogte)
    {
      sliderPositie = bepaalPositie(sliderX, sliderBreedte, nPosities);
    }
 tekenSlider(sliderX,sliderEenY,sliderBreedte,sliderHoogte,sliderPositie, nPosities);
 text("Hoeveelheid Kaarten: "+ (sliderPositie + minimaleMarge), sliderX, sliderEenY-margeSliderTekst); 

}

// Hier worden de positie in de slider bepaald
int bepaalPositie(float x, float breedte, int nPosities){
 
  float blokjeBreedte = breedte / nPosities ;
 
 if (mouseX < x){
  return 0;
 }
 else if ( mouseX >= breedte + x){
   return nPosities - 1;
 }
 else{
   return floor((mouseX - x) / blokjeBreedte);
 }
}
 // hier worden de sliders getekend 
void tekenSlider(float x, float y, float breedte, float hoogte, int positie, int nPosities){
 float blokjeBreedte = breedte / nPosities;
 

 fill(255);
 rect(x,y, breedte, hoogte);
 
 fill(255,0,0);
 rect(x + positie * blokjeBreedte + 2, y, blokjeBreedte, hoogte);

}
/*
 stroke(0);
 fill(#BFBFBF);
 rect(width/2-10, height/2-50, 100,100);
 textSize(20);
 fill(0);
 text("1 Speler", width/2,height/2);
 */
